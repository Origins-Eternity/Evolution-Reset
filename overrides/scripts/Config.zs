#sideonly client
#priority 10000
import crafttweaker.events.IEventManager;
import crafttweaker.event.CommandEvent;
import crafttweaker.command.ICommandManager;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.text.ITextComponent;
# You can use it by changing true or false. After making changes, you need to restart the game.

# If false, you can use any commands in game. 
# Default: true 
val disablecommand as bool = true;

# If false, You can join world in any gamemode. 
# Default: true 
val forcegamemode as bool = true;

# If false, You can play game in without locking difficulty. 
# Default: true 
val lockdifficulty as bool = true;

events.onCommand(function(event as CommandEvent) {
if (disablecommand == true) {
   val command = event.command;
   if((command.name == "backup") || (command.name == "ct") || (command.name == "crafttweaker") || (command.name == "team")) {
       return;
   }
   else if (event.commandSender instanceof IPlayer) {
   val player as IPlayer = event.commandSender;
   player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.command.tip"));
   event.cancel(); 
   }
}});

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
    var ser = server.commandManager as ICommandManager;
    if (forcegamemode == true) {
        ser.executeCommand(server, "gamemode survival " + event.player.name);
    }
    if (lockdifficulty == true) {
        if(event.player.world.isRemote()) return;
        val info = event.player.world.getWorldInfo();
        if(!info.difficultyLocked) {
            event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.difficulty"));
            ser.executeCommand(server, "gamemode adventure " + event.player.name);
        }
    }
});