#
import crafttweaker.events.IEventManager;
import crafttweaker.event.CommandEvent;
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
import crafttweaker.entity.IEntityMob;
import crafttweaker.event.PlayerInteractEntityEvent;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.event.ItemTossEvent;
import crafttweaker.event.PlayerInteractEvent;

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
var player = event.player;
var id = event.block.definition.id;
    if ((id == "minecraft:furnace") || (id == "minecraft:crafting_table") || (id == "minecraft:lit_furnace")) {
        if (!event.world.isRemote()) {
            player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.broken"));
        }
        event.cancel();
    }
});

events.onItemToss(function(event as ItemTossEvent) {
    var itemdrop = event.item.item;
    var oredicts as string = "";
    for ore in itemdrop.ores {
        oredicts += ore.name;
    }
    if(oredicts.contains("banItem")) {
        event.cancel();
    }
});

events.onPlayerBonemeal(function(event as PlayerBonemealEvent) {
    event.cancel();
});

events.onPlayerInteract(function(event as PlayerInteractEvent) {
    val player = event.player;
    if(isNull(player.currentItem)) return;
    var oredicts as string = "";
    for ore in player.currentItem.ores {
        oredicts += ore.name;
    }
    if(oredicts.contains("banItem")) {
        event.cancel();
        player.dropItem(true);
    }
});

events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
if (!event.world.remote) {
    if(event.silkTouch) return;
    var id = event.block.definition.id;
    if(id == "minecraft:bed") {
        event.drops = [<item:minecraft:string> * 3 % 100];
    } else if((id == "minecraft:chest") || (id == "minecraft:trapped_chest")) {
        if((!event.isPlayer) || (isNull(event.player.currentItem))) {
            event.drops = [<item:pyrotech:rock:7> * 3 % 100];
        } else if(event.player.currentItem.isEnchanted) {
            var name as string = "";
            for enchantment in event.player.currentItem.enchantments {
                name += enchantment.definition.name;
            }
            if(name.contains("untouching")) return;
            event.drops = [<item:pyrotech:rock:7> * 4 % 100];
        } else {
            event.drops = [<item:pyrotech:rock:7> * 4 % 100];
        }
    }
}});

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
    player.addPotionEffect(<potion:minecraft:invisibility>.makePotionEffect(12000, 5));
	player.addPotionEffect(<potion:minecraft:night_vision>.makePotionEffect(6000, 5));
    player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(400, 1));
});

events.onPlayerAdvancement(function(event as PlayerAdvancementEvent) {
    val player as IPlayer = event.player;
    player.xp += 3;
});

var mobsone = [
"Witch",
"Zombie",
"ZombieVillager",
"Husk",
"Slime",
"ZombieHorse",
"SkeletonHorse",
"tconstruct.blueslime",
"pyrotech.mud",
"LavaSlime",
"PigZombie",
"WitherSkeleton",
"Spider",
"Skeleton",
"Stray",
"Creeper",
"Enderman",
"CaveSpider",
"Ghast"
] as string[];


var mobstwo = [
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
    val entity = event.entity;
    val time = event.world.getWorldInfo().getWorldTotalTime();
    if(!entity instanceof IEntityMob) return;
    for mobone in mobsone {
        if(entity.definition.name == mobone) {
            if(time < 301260) {
                event.cancel();
            }
        }
    }
    for mobtwo in mobstwo {
        if(entity.definition.id == mobtwo) {
            if(time < 603012) {
                event.cancel();
            }
        }
    }
});

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
    var player = event.player as IPlayer;
    var ser = server.commandManager as ICommandManager;
    val time = player.world.getWorldInfo().getWorldTotalTime();
    if(time < 552000) {
        if(!isNull(player.data.wasGivenTip1)) return;
        player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.login.tip1"));
        player.update({wasGivenTip1: true});
    } else if(time < 768000) {
        if(!isNull(player.data.wasGivenTip2)) return;
        player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.login.tip2"));
        player.update({wasGivenTip2: true});
    } else if(isNull(player.data.wasGivenTip3)) {
        player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.login.tip3"));
        player.update({wasGivenTip3: true});
    }
    if (forcegamemode == true) {
        ser.executeCommand(server, "gamemode survival " + player.name);
    }
});

if (disablecommand == true) {
events.onCommand(function(event as CommandEvent) {
   val command = event.command;
   if((command.name == "backup") || (command.name == "ct") || (command.name == "crafttweaker") || (command.name == "team")) {
       return;
   }
   else if (event.commandSender instanceof IPlayer) {
   val player as IPlayer = event.commandSender;
   player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.command.tip"));
   event.cancel(); 
   }
});
}

events.onBlockBreak(function(event as BlockBreakEvent) {
if((event.world.remote) || (!event.isPlayer)) return;
if(!event.player.creative) {
	val player as IPlayer = event.player;
    val block as IBlock = event.block;
    val info = event.world.getWorldInfo();
    if(block.definition.hardness >= 0.6) {
        if(isNull(player.currentItem)) {
            event.cancel();
        } else {
        if(player.currentItem.definition.name.contains("axe")) return;
        if(player.currentItem.definition.name.contains("pickaxe")) return;
        if(player.currentItem.definition.name.contains("shovel")) return;
        if(player.currentItem.definition.name.contains("sword")) return;
        if(player.currentItem.definition.name.contains("hoe")) return;
            event.cancel();
        }
    }
    if(!info.difficultyLocked) {
        event.cancel();
        player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.difficulty"));
    }
}});