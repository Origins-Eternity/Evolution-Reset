#
#sideonly client
import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.data.IData;
import crafttweaker.command.ICommandManager;
import crafttweaker.text.ITextComponent;
import crafttweaker.event.PlayerSleepInBedEvent;
import crafttweaker.event.BlockBreakEvent;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.world.IWorld;
import crafttweaker.world.IWorldInfo;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.PlayerAdvancementEvent;
import crafttweaker.event.PortalSpawnEvent;
import crafttweaker.event.PlayerBonemealEvent;
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.event.EntityLivingDeathDropsEvent;
import crafttweaker.entity.IEntityItem;
import crafttweaker.event.PlayerInteractEntityEvent;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.event.ItemTossEvent;
import crafttweaker.event.PlayerInteractEvent;
import crafttweaker.event.PlayerBreakSpeedEvent;
import crafttweaker.event.BlockPlaceEvent;
import crafttweaker.world.IBlockAccess;
import crafttweaker.world.IBlockPos;
import crafttweaker.world.IFacing;
import crafttweaker.event.PlayerCraftedEvent;
import crafttweaker.entity.IEntityMob;
import crafttweaker.event.PlayerChangedDimensionEvent;

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
var id = event.block.definition.id;
if (!event.player.world.isRemote()) {
    if ((id == "minecraft:furnace") || (id == "minecraft:crafting_table") || (id == "minecraft:lit_furnace")) {
        if(!isNull(event.player.data.wasGivenTip1)) return;
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.broken"));
        event.player.update({wasGivenTip1: true});
        event.cancel();
    } else if(id == "immersiveengineering:wooden_device0") {
        var current = event.player.currentItem;
        if (isNull(current)) {
            event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.locked"));
            event.cancel();
        } else if(!current.definition.id.contains("key")) {
            event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.locked"));
            event.cancel();
        } else if(current.definition.id != "locks:master_key") {
            event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.failed"));
            event.cancel();
        }
    }
}});

events.onItemToss(function(event as ItemTossEvent) {
    var itemdrop = event.item.item;
    if(itemdrop in <ore:banItems>) {
        event.cancel();
    }
});

events.onPlayerBonemeal(function(event as PlayerBonemealEvent) {
    event.cancel();
});

events.onPlayerChangedDimension(function(event as PlayerChangedDimensionEvent) {
    var ser = server.commandManager as ICommandManager;
    if(event.toWorld.dimension == 1) {
        ser.executeCommand(server, "gameruled set keepInventory true");
    }
});

events.onPlayerCrafted(function(event as PlayerCraftedEvent) {
    if(event.player.world.isRemote()) return;
    if(event.output.definition.id == "pyrotech:crude_axe") {
        if(!isNull(event.player.data.wasGivenTip3)) return;
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.tip3"));
        event.player.update({wasGivenTip3: true});
    } else if(event.output.definition.id == "tconstruct:smeltery_controller") {
        if(isNull(event.player.world.getCustomWorldData().reachingStage)) {
            event.player.world.updateCustomWorldData({reachingStage: true});
        }
    }
});

events.onPlayerInteract(function(event as PlayerInteractEvent) {
    if(event.player.world.isRemote()) return;
    val player = event.player;
    if(isNull(player.currentItem)) return;
    if(player.currentItem in <ore:banItems>) {
        player.dropItem(true);
    } else if(player.currentItem.name == "item.glassBottle") {
        player.dropItem(true);
    }
    if(!isNull(player.data.wasGivenTip2)) return;
    if(isNull(player.data.wasGivenTip1)) return;
    player.sendRichTextMessage(ITextComponent.fromString("<" + event.player.name + "> ") + ITextComponent.fromTranslation("crafttweaker.message.tip2"));
    player.update({wasGivenTip2: true});
});

events.onEntityLivingDeathDrops(function(event as EntityLivingDeathDropsEvent) {
    if(event.entity instanceof IPlayer) return;
    var oredicts as string = "";
    for drop in event.drops {
        for ore in drop.item.ores {
            oredicts += ore.name;
        }
    }
    if(oredicts.contains("banItem")) {
        event.cancel();
    }
});

events.onPlayerRespawn(function(event as PlayerRespawnEvent) {
    val player as IPlayer = event.player;
    player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(312, 1));
    player.addPotionEffect(<potion:minecraft:weakness>.makePotionEffect(312, 1));
    player.xp = 0;
});

var mobs = [
"Witch",
"Slime",
"tconstruct.blueslime",
"pyrotech.mud",
"Spider",
"Stray",
"Creeper",
"Enderman",
"CaveSpider",
"babycreeper",
"babyenderman",
"babyguardian",
"babyirongolem",
"babyocelot",
"babyshulker",
"babyshulkerbullet",
"babysnowman",
"babyspider",
"babycavespider",
"babysquid",
"babywitch",
"babywither",
"Skeleton",
"Zombie",
"Husk",
"ZombieVillager",
"ZombieHorse",
"SkeletonHorse",
"zombiechicken",
"zombiepig",
"mutantbeasts.body_part",
"mutantbeasts.chemical_x",
"mutantbeasts.creeper_minion",
"mutantbeasts.creeper_minion_egg",
"mutantbeasts.endersoul_clone",
"mutantbeasts.endersoul_fragment",
"mutantbeasts.mutant_arrow",
"mutantbeasts.mutant_creeper",
"mutantbeasts.mutant_enderman",
"mutantbeasts.mutant_skeleton",
"mutantbeasts.mutant_snow_golem",
"mutantbeasts.mutant_zombie",
"mutantbeasts.skull_spirit",
"mutantbeasts.spider_pig",
"mutantbeasts.throwable_block",
"babyskeleton",
"babyzombie"
] as string[];

events.onEntityJoinWorld(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    if(!entity instanceof IEntityMob) return;
    if(event.world.dimension != 0) return;
    if(event.world.isRemote()) return;
    if(isNull(event.world.getCustomWorldData().reachingStage)) {
        for mob in mobs {
            if(entity.definition.name == mob) {
                event.cancel();
                break;
            }
        }
    }
});

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
    var player = event.player as IPlayer;
    var ser = server.commandManager as ICommandManager;
    if(event.player.world.isRemote()) return;
    val info = event.player.world.getWorldInfo();
    if(!info.difficultyLocked) {
        player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.difficulty"));
        ser.executeCommand(server, "gamemode adventure " + event.player.name);
    } else if(isNull(player.data.wasGivenTip1)) {
        ser.executeCommand(server, "gamemode survival " + event.player.name);
        player.addPotionEffect(<potion:minecraft:blindness>.makePotionEffect(100, 1));
        player.sendRichTextMessage(ITextComponent.fromString("<" + event.player.name + "> ") + ITextComponent.fromTranslation("crafttweaker.message.tip1"));
        player.give(<ftbquests:book>);
        player.update({wasGivenTip1: true});
    }
});

events.onBlockBreak(function(event as BlockBreakEvent) {
if((event.world.remote) || (!event.isPlayer)) return;
if(!event.player.creative) {
	val player as IPlayer = event.player;
    val block as IBlock = event.block;
    if(block.definition.hardness > 0.6) {
        if(isNull(player.currentItem)) {
            event.cancel();
            player.addPotionEffect(<potion:tconstruct:dot>.makePotionEffect(20, 1));
            player.addPotionEffect(<potion:minecraft:mining_fatigue>.makePotionEffect(100, 1));
        } else {
        if(player.currentItem.definition.name.contains("axe")) return;
        if(player.currentItem.definition.name.contains("pickaxe")) return;
        if(player.currentItem.definition.name.contains("shovel")) return;
        if(player.currentItem.definition.name.contains("sword")) return;
        if(player.currentItem.definition.name.contains("hoe")) return;
            event.cancel();
        }
    }
}});

events.onBlockPlace(function(event as BlockPlaceEvent) {
var id = event.block.definition.id;
var player = event.player;
    if (id.contains("hopper")) {
        var pos as IBlockPos = event.position.getOffset(IFacing.down(), 1);
        var down = event.world.getBlockState(pos).block;
        if ((down.definition.id == "minecraft:furnace") || (id == "minecraft:lit_furnace"))  {
            event.world.destroyBlock(pos, false);
        }
    }
});