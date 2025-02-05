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

# If false, You can play game in without locking difficulty. 
# Default: true 
val lockdifficulty as bool = true;

events.onCommand(function(event as CommandEvent) {
    if(disablecommand == true && event.commandSender instanceof IPlayer) {
        if(event.command.name == "backup") return;
        if(event.command.name == "ct") return;
        if(event.command.name == "crafttweaker") return;
        if(event.command.name == "team") return;
        if(event.command.name == "register") return;
        if(event.command.name == "login") return;
        if(event.command.name == "sl_changepassword") return;
        if(event.command.name == "chunk_claim") return;
        if(event.command.name == "chunkclaim") return;
        if(event.command.name == "cclaim") return;
        if(event.command.name == "tpa") return;
        if(event.command.name == "tpahere") return;
        if(event.command.name == "tpaccept") return;
        var player as IPlayer = event.commandSender;
        player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.command.tip"));
        event.cancel();
}});

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
    var ser = server.commandManager as ICommandManager;
    ser.executeCommand(server, "gamemode survival " + event.player.name);
    if (lockdifficulty == true && !event.player.world.isRemote()) {
        var info = event.player.world.getWorldInfo();
        if(!info.difficultyLocked) {
            if(isNull(event.player.world.getCustomWorldData().reachingStage)) return;
            event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.difficulty"));
            ser.executeCommand(server, "gamemode adventure " + event.player.name);
        }
    }
});