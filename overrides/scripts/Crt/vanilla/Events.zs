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

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
var player = event.player;
var id = event.block.definition.id;
    if ((id == "minecraft:furnace") || (id == "minecraft:crafting_table")) {
        if (!event.world.isRemote()) {
            player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.broken"));
        }
        event.cancel();
    }
});

events.onPlayerBonemeal(function(event as PlayerBonemealEvent) {
    event.cancel();
});

events.onPlayerRespawn(function(event as PlayerRespawnEvent) {
    val player as IPlayer = event.player;
    player.addPotionEffect(<potion:minecraft:invisibility>.makePotionEffect(12000, 5));
	player.addPotionEffect(<potion:minecraft:night_vision>.makePotionEffect(6000, 5));
    player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(400, 1));
});

events.onPlayerAdvancement(function(event as PlayerAdvancementEvent) {
    val player as IPlayer = event.player;
    player.xp += 5;
});


events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
    var player = event.player as IPlayer;
    var ser = server.commandManager as ICommandManager;
    if (forcegamemode == true) {
        ser.executeCommand(server, "gamemode survival " + player.name);
    }
});

events.onPlayerSleepInBed(function(event as PlayerSleepInBedEvent) {
    val player as IPlayer = event.player;
	player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(200, 2));
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
val info = event.world.getWorldInfo();
val player as IPlayer = event.player;
val block as IBlock = event.block;
if(player.creative == false) {
    if((block.definition.hardness >= 0.6) && (event.isPlayer == true)) {
        if(isNull(player.currentItem)) {
            event.cancel();
        } else {
            val name = event.player.currentItem.definition.id;
            if(name.contains("axe")) return;
            if(name.contains("pickaxe")) return;
            if(name.contains("shovel")) return;
            if(name.contains("hoe")) return;
            if(name.contains("sword")) return;
            event.cancel();
        }
    }
    if(info.difficultyLocked == false) {
        event.cancel();
        if (!event.world.isRemote()) {
            player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.difficulty"));
        }
    }
    if(isNull(player.currentItem)) {
        if((!event.world.remote) && (player.isAllowFTBUltimine())) {
            player.setAllowFTBUltimine(false);
        }
    } else {
        val name = player.currentItem.definition.id;
        for item in <ore:banitems>.items {
            var toolname = item.definition.id;
            if(name == toolname) {
                event.cancel();
            }
        }
        if(!event.world.remote) {
            val block as IBlock = event.block;
            if(block.definition.id.contains("ore")) {
                if((name.contains("pickaxe")) && (!player.isAllowFTBUltimine())) {
                    player.setAllowFTBUltimine(true);
                }
            }
        }
    }
}});