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
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.PlayerBreakSpeedEvent;

var names as string[] = [
"crafting_table",
"furnace"
];

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
var id = event.block.definition.id;
var player = event.player;
for name in names {
    if (id.contains(name)) {
        if (!event.world.isRemote()) {
            player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.broken"));
        }
        event.cancel();
    }
}});

events.onPlayerRespawn(function(event as PlayerRespawnEvent) {
    val player as IPlayer = event.player;
    player.addPotionEffect(<potion:minecraft:invisibility>.makePotionEffect(12000, 5));
	player.addPotionEffect(<potion:minecraft:night_vision>.makePotionEffect(6000, 5));
    player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(400, 1));
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

events.onPlayerBreakSpeed(function(event as PlayerBreakSpeedEvent) {
val player as IPlayer = event.player;
val block as IBlock = event.block;
val name = event.player.currentItem.definition.id;
    if((block.definition.hardness >= 0.6) && (event.isPlayer != false)) {
        if(isNull(player.currentItem)) {
            event.cancel();
        } else {
            if(name.contains("axe")) return;
            if(name.contains("shovel")) return;
            if(name.contains("hoe")) return;
            if(name.contains("sword")) return;
            event.cancel();
        }
    }
});

events.onBlockBreak(function(event as BlockBreakEvent) {
val name = event.player.currentItem.definition.id;
    for item in <ore:banitems>.items {
        var toolname = item.definition.id;
        if(name == toolname) {
            event.cancel();
        }
    }
    if(!event.world.remote) {
        val block as IBlock = event.block;
        if(block.definition.id.contains("ore")) {
            event.player.setAllowFTBUltimine(true);
        } else {
            event.player.setAllowFTBUltimine(false);
        }
    }
});