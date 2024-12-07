#
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
import crafttweaker.event.PlayerCloneEvent;
import crafttweaker.event.PlayerFillBucketEvent;

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
var id = event.block.definition.id;
var meta = event.block.meta;
if (!event.player.world.isRemote()) {
    var current = event.player.currentItem;
    if ((id == "minecraft:furnace") || (id == "minecraft:crafting_table") || (id == "minecraft:lit_furnace")) {
        event.cancel();
        if(!isNull(event.player.data.wasGivenTip1)) return;
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.broken"));
        event.player.update({wasGivenTip1: true});
    }
}});

events.onPlayerClone(function(event as PlayerCloneEvent) {
    if(!event.player.world.isRemote()) {
        if(!isNull(event.originalPlayer.data.wasGivenTip1)) {
            event.player.update({wasGivenTip1: true});
        }
        if(!isNull(event.originalPlayer.data.wasGivenTip2)) {
            event.player.update({wasGivenTip2: true});
        }
        if(!isNull(event.originalPlayer.data.wasGivenTip3)) {
            event.player.update({wasGivenTip3: true});
        }
    }
});

events.onPlayerBonemeal(function(event as PlayerBonemealEvent) {
    event.cancel();
});

events.onItemToss(function(event as ItemTossEvent) {
    var itemdrop = event.item.item;
    if(<ore:banItems> has itemdrop) {
        event.cancel();
    }
});

events.onPlayerChangedDimension(function(event as PlayerChangedDimensionEvent) {
    if(event.player.world.isRemote()) return;
    if(!isNull(event.fromWorld.getCustomWorldData().reachingStage)) {
        event.toWorld.updateCustomWorldData({reachingStage: true});
    }
    var ser = server.commandManager as ICommandManager;
    if(event.toWorld.dimension == -1) {
        if((isNull(event.player.currentItem)) || (!(event.player.currentItem in <ore:runeFireB>))) {
            if(isNull(event.player.bedLocation)) {
                ser.executeCommand(server, "tpd " + event.player.name + " 0 0 0");
            } else {
                ser.executeCommand(server, "tpd " + event.player.name + " 0 " + event.player.bedLocation.x + " " + event.player.bedLocation.z);
            }
            event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.nether"));
        }
    } else if(event.toWorld.dimension == 1) {
        if((isNull(event.player.currentItem)) || (!(event.player.currentItem in <ore:runeLustB>))) {
            if(isNull(event.player.bedLocation)) {
                ser.executeCommand(server, "tpd " + event.player.name + " 0 0 0");
            } else {
                ser.executeCommand(server, "tpd " + event.player.name + " 0 " + event.player.bedLocation.x + " " + event.player.bedLocation.z);
            }
            event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.nether"));
        }
    }
});

events.onPlayerInteract(function(event as PlayerInteractEvent) {
    if(isNull(event.player.currentItem)) return;
    if(<ore:banItems> has event.player.currentItem) {
        event.player.dropItem(true);
    }
    if(event.player.world.isRemote()) return;
    val player = event.player;
    if(!isNull(player.data.wasGivenTip2)) return;
    if(isNull(player.data.wasGivenTip1)) return;
    player.sendRichTextMessage(ITextComponent.fromString("<" + event.player.name + "> ") + ITextComponent.fromTranslation("crafttweaker.message.tip2"));
    player.update({wasGivenTip2: true});
});

events.onEntityLivingDeathDrops(function(event as EntityLivingDeathDropsEvent) {
    if(event.entity instanceof IPlayer) return;
    for drop in event.drops {
        if(<ore:banItems> has drop.item) {
            event.cancel();
        }
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
"babyzombie",
"WitherSkeleton",
"Blaze",
"oe.drowned"
] as string[];

events.onEntityJoinWorld(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    if(isNull(entity.definition)) return;
    if(event.world.dimension != 0) return;
    if(event.world.isRemote()) return;
    if(isNull(event.world.getCustomWorldData().reachingStage)) {
        if(entity.definition.name == "Chicken") {
            if(entity.nbt.asString().contains("IsChickenJockey: 1")) {
                event.cancel();
            }
        }
        for mob in mobs {
            if(entity.definition.name == mob) {
                event.cancel();
                break;
            }
        }
    }
});

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
    var ser = server.commandManager as ICommandManager;
    if(event.player.world.isRemote()) return;
    var player = event.player as IPlayer;
    if(isNull(player.data.wasGivenTip1)) {
        player.addPotionEffect(<potion:minecraft:blindness>.makePotionEffect(100, 1));
        player.sendRichTextMessage(ITextComponent.fromString("<" + event.player.name + "> ") + ITextComponent.fromTranslation("crafttweaker.message.tip1"));
        player.give(<ftbquests:book>);
        player.update({wasGivenTip1: true});
    }
    player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.tip"));
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
            if(player.currentItem.definition.name.contains("shovel")) return;
            if(player.currentItem.definition.name.contains("hoe")) return;
            if(player.currentItem.definition.name.contains("hammer")) return;
            if(player.currentItem.definition.name.contains("kama")) return;
            if(player.currentItem.definition.name.contains("scythe")) return;
            if(player.currentItem.definition.name.contains("excavator")) return;
            if(player.currentItem.definition.name.contains("hatchet")) return;
            if(player.currentItem.definition.name.contains("mattock")) return;
            if(player.currentItem.definition.name.contains("shears")) return;
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
    } else if (id == "tconstruct:smeltery_controller") {
        if (isNull(event.player.world.getCustomWorldData().reachingStage)) {
            event.player.world.updateCustomWorldData({reachingStage: true});
        }
    }
});

events.onPlayerFillBucket(function(event as PlayerFillBucketEvent) {
    var id = event.block.definition.id;
    if((id == "minecraft:ice") && (event.player.currentItem.definition.id != "minecraft:bucket")) {
        event.cancel();
    }
});

events.onPlayerCrafted(function(event as PlayerCraftedEvent) {
    if(event.player.world.isRemote()) return;
    if(isNull(event.output)) return;
    if(event.output.definition.id == "pyrotech:crude_axe") {
        if(!isNull(event.player.data.wasGivenTip3)) return;
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.tip3"));
        event.player.update({wasGivenTip3: true});
    }
});