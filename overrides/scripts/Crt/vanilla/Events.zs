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
import crafttweaker.entity.IEntityMob;
import crafttweaker.event.PlayerInteractEntityEvent;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.event.ItemTossEvent;
import crafttweaker.event.PlayerInteractEvent;
import crafttweaker.event.PlayerBreakSpeedEvent;

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
var player = event.player;
var id = event.block.definition.id;
    if ((id == "minecraft:furnace") || (id == "minecraft:crafting_table") || (id == "minecraft:lit_furnace")) {
        if (!player.world.isRemote()) {
            player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.broken"));
        }
        event.cancel();
    } else if(id == "immersiveengineering:wooden_device0") {
        var current = event.player.currentItem;
        if (!isNull(current) && current.definition.id == "locks:steel_lock_pick") return;
        event.cancel();
    }
});

events.onItemToss(function(event as ItemTossEvent) {
    var itemdrop = event.item.item;
    if(itemdrop in <ore:banItems>) {
        event.cancel();
    }
});

events.onPlayerBonemeal(function(event as PlayerBonemealEvent) {
    event.cancel();
});

events.onPlayerInteract(function(event as PlayerInteractEvent) {
    val player = event.player;
    if(isNull(player.currentItem)) return;
    if(player.currentItem in <ore:banItems>) {
        player.dropItem(true);
    }
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

events.onEntityJoinWorld(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val time = event.world.getWorldInfo().getWorldTotalTime();
    if(!entity instanceof IEntityMob) return;
    if(time < 603021) {
        event.cancel();
    }
});

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
    var player = event.player as IPlayer;
    var ser = server.commandManager as ICommandManager;
    val time = player.world.getWorldInfo().getWorldTotalTime();
    if(time < 603021) {
        if(!isNull(player.data.wasGivenTip1)) return;
        player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.login.tip1"));
        player.update({wasGivenTip1: true});
    }
});

events.onBlockBreak(function(event as BlockBreakEvent) {
if((event.world.remote) || (!event.isPlayer)) return;
if(!event.player.creative) {
	val player as IPlayer = event.player;
    val block as IBlock = event.block;
    val info = event.world.getWorldInfo();
    if(block.definition.hardness > 0.6) {
        if(isNull(player.currentItem)) {
            event.cancel();
            player.addPotionEffect(<potion:tconstruct:dot>.makePotionEffect(20, 1));
            player.addPotionEffect(<potion:minecraft:mining_fatigue>.makePotionEffect(200, 1));
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

events.onPlayerBreakSpeed(function(event as PlayerBreakSpeedEvent) {
if(event.world.remote) return;
if(!event.player.creative) {
	val player as IPlayer = event.player;
    val block as IBlock = event.block;
    val info = event.world.getWorldInfo();
    if(block.definition.id.contains("wood")) {
        if(isNull(player.currentItem)) {
            event.cancel();
        } else {
        if(player.currentItem.definition.name.contains("axe")) return;
            event.cancel();
        }
    }
}});