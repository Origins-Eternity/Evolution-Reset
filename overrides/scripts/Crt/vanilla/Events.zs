#
import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityMob;
import crafttweaker.entity.IEntityLiving;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.data.IData;
import crafttweaker.command.ICommandManager;
import crafttweaker.text.ITextComponent;
import crafttweaker.event.PlayerSleepInBedEvent;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.world.IWorld;
import crafttweaker.world.IWorldInfo;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.PlayerAdvancementEvent;
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
import crafttweaker.event.PlayerChangedDimensionEvent;
import crafttweaker.event.PlayerCloneEvent;
import crafttweaker.event.PlayerFillBucketEvent;
import crafttweaker.event.EntityLivingFallEvent;
import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.event.LivingExperienceDropEvent;
import crafttweaker.entity.IEntityLivingBase;

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
var id = event.block.definition.id;
if (!event.world.isRemote()) {
    if ((id == "minecraft:furnace") || (id == "minecraft:crafting_table") || (id == "minecraft:lit_furnace")) {
        event.cancel();
        event.world.destroyBlock(event.position, false);
    }
}});

events.onPlayerClone(function(event as PlayerCloneEvent) {
    if(!event.player.world.isRemote()) {
        event.player.update(event.originalPlayer.data);
    }
});

events.onPlayerBonemeal(function(event as PlayerBonemealEvent) {
    if(!event.world.isRemote()) {
        event.cancel();
    }
});

events.onEntityLivingFall(function(event as EntityLivingFallEvent) {
    if(event.entityLivingBase instanceof IPlayer && !event.entityLivingBase.world.isRemote()) {
        var player as IPlayer = event.entityLivingBase;
        if((!isNull(player.data.wasInvited)) && (isNull(player.data.wasFall))) {
            event.cancel();
            player.update({wasFall: true});
        } else if((!isNull(player.data.wasInvited1)) && (isNull(player.data.wasFall1))) {
            event.cancel();
            player.update({wasFall1: true});
        }
    }
});

events.onPlayerRightClickItem(function(event as PlayerRightClickItemEvent) {
    if(!event.world.isRemote()) {
        if(<ore:runeFireB> has event.item) {
            if(isNull(event.player.data.wasInvited)) {
                event.player.addPotionEffect(<potion:minecraft:glowing>.makePotionEffect(300, 1));
                event.player.addPotionEffect(<potion:minecraft:blindness>.makePotionEffect(100, 1));
                event.player.addPotionEffect(<potion:minecraft:levitation>.makePotionEffect(200, 1));
                event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.tip1"));
                event.player.update({wasInvited: true});
            }
        } else if(<ore:runeLustB> has event.item) {
            if(isNull(event.player.data.wasInvited1)) {
                event.player.addPotionEffect(<potion:minecraft:glowing>.makePotionEffect(300, 1));
                event.player.addPotionEffect(<potion:minecraft:blindness>.makePotionEffect(100, 1));
                event.player.addPotionEffect(<potion:minecraft:levitation>.makePotionEffect(200, 1));
                event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.tip2"));
                event.player.update({wasInvited1: true});
            }
        }
    }
});

events.onItemToss(function(event as ItemTossEvent) {
    var itemdrop = event.item.item;
    if(<ore:banItems> has itemdrop) {
        event.cancel();
    }
});

events.onPlayerChangedDimension(function(event as PlayerChangedDimensionEvent) {
    var ser = server.commandManager as ICommandManager;
    var info as IWorldInfo = event.fromWorld.getWorldInfo();
    if(event.toWorld.dimension == -1) {
        if(isNull(event.player.data.wasInvited)) {
            if(isNull(event.player.bedLocation)) {
                ser.executeCommand(server, "tpd " + event.player.name + " 0 " + info.spawnX + " " + info.spawnZ);
            } else {
                ser.executeCommand(server, "tpd " + event.player.name + " 0 " + event.player.bedLocation.x + " " + event.player.bedLocation.z);
            }
            event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.dimension"));
        } else if (isNull(event.fromWorld.getCustomWorldData().reachingStage)) {
            event.fromWorld.updateCustomWorldData({reachingStage: true});
        }
    } else if(event.toWorld.dimension == 1) {
        if(isNull(event.player.data.wasInvited1)) {
            if(isNull(event.player.bedLocation)) {
                ser.executeCommand(server, "tpd " + event.player.name + " 0 " + info.spawnX + " " + info.spawnZ);
            } else {
                ser.executeCommand(server, "tpd " + event.player.name + " 0 " + event.player.bedLocation.x + " " + event.player.bedLocation.z);
            }
            event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.dimension"));
        } else if (isNull(event.fromWorld.getCustomWorldData().reachingStage1)) {
            event.fromWorld.updateCustomWorldData({reachingStage1: true});
        }
    }
});

events.onPlayerInteract(function(event as PlayerInteractEvent) {
    if(isNull(event.player.currentItem)) return;
    if(<ore:banItems> has event.player.currentItem) {
       event.damageItem(event.player.currentItem.maxDamage + 1);
    }
});

events.onEntityLivingDeathDrops(function(event as EntityLivingDeathDropsEvent) {
    if(event.entity instanceof IPlayer) return;
    for drop in event.drops {
        if(<ore:banItems> has drop.item) {
            event.cancel();
        }
    }
});

events.onPlayerAdvancement(function(event as PlayerAdvancementEvent) {
    if(!event.player.world.isRemote()) {
        if(!event.id.contains("recipes")) {
            event.player.xp += 1;
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
    "Slime",
    "ZombieHorse",
    "SkeletonHorse",
    "tconstruct.blueslime",
    "pyrotech.mud",
    "zombiepig",
    "zombiechicken"
] as string[];

var babymobs = [
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
    "babyskeleton",
    "babyzombie"
] as string[];

var mutantmobs = [
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
    "mutantbeasts.throwable_block"
] as string[];

events.onEntityJoinWorld(function(event as EntityJoinWorldEvent) {
    var entity = event.entity;
    if (entity instanceof IEntityLiving) {
        var name = entity.definition.name;
        if (name != "sanity.shadow_monster") {
            val data = event.world.getCustomWorldData();
            if (isNull(data.reachingStage)) {
                if (entity instanceof IEntityMob) {
                    event.cancel();
                    entity.setDead();
                }
                if (mobs.contains(name)) {
                    event.cancel();
                    entity.setDead();
                }
                return;
            }
            if (isNull(data.reachingStage1)) {
                if (babymobs.contains(name) || mutantmobs.contains(name)) {
                    event.cancel();
                    entity.setDead();
                }
                return;
            }
            if (isNull(data.reachingStage2)) {
                if (mutantmobs.contains(name)) {
                    event.cancel();
                    entity.setDead();
                }
                return;
            }
        }
    }
});

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
    var ser = server.commandManager as ICommandManager;
    if(event.player.world.isRemote()) return;
    var player = event.player as IPlayer;
    if(isNull(player.data.wasGivenTip)) {
        player.give(<ftbquests:book>);
        player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.tip"));
        player.update({wasGivenTip: true});
    }
});

events.onPlayerBreakSpeed(function(event as PlayerBreakSpeedEvent) {
if(!event.player.creative) {
    if(event.block.definition.hardness > 0.6) {
        val player as IPlayer = event.player;
        if(isNull(player.currentItem)) {
            event.cancel();
        } else {
            var item = player.currentItem;
            if(item.definition.name.contains("axe")) return;
            if(item.definition.name.contains("shovel")) return;
            if(item.definition.name.contains("hoe")) return;
            if(item.definition.name.contains("hammer")) return;
            if(item.definition.name.contains("kama")) return;
            if(item.definition.name.contains("scythe")) return;
            if(item.definition.name.contains("excavator")) return;
            if(item.definition.name.contains("hatchet")) return;
            if(item.definition.name.contains("mattock")) return;
            if(item.definition.name.contains("shears")) return;
            if(item.definition.id == "immersiveengineering:drill") return;
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
    } else if (id == "galacticraftcore:rocket_workbench") {
        if (isNull(event.world.getCustomWorldData().reachingStage2)) {
            event.world.updateCustomWorldData({reachingStage2: true});
        }
    }
});

events.onLivingExperienceDrop(function(event as LivingExperienceDropEvent) {
    var entity as IEntityLivingBase = event.entityLivingBase;
    if (entity instanceof IEntityMob) {
        if (entity.definition.name == "sanity.shadow_monster") {
            event.droppedExperience = 50;
        }
    }
});