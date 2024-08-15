#
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerLeftClickBlockEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.event.IPlayerEvent;
import crafttweaker.player.IPlayer;

events.onPlayerLeftClickBlock(function(event as PlayerLeftClickBlockEvent) {
    val player as IPlayer = event.player;
    var item as IItemStack = player.currentItem;
    if (!isNull(item) && item.definition.id.contains("chisel:chisel")) {
        event.cancel();
    }
});