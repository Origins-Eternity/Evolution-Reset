#
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.command.ICommandManager;
import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerInteractBlockEvent;

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
    var ser = server.commandManager as ICommandManager;
    var current = event.player.currentItem;
    if (!isNull(current) && current.name == "item.glassBottle") {
        event.player.dropItem(true);
    }
    if (!isNull(current) && current.name == "item.dyePowder.white") {
        event.cancel();
    }
 });

<toughasnails:wool_helmet>.maxDamage = 500;
<toughasnails:wool_chestplate>.maxDamage = 800;
<toughasnails:wool_leggings>.maxDamage = 600;
<toughasnails:wool_boots>.maxDamage = 400;
<toughasnails:jelled_slime_helmet>.maxDamage = 500;
<toughasnails:jelled_slime_chestplate>.maxDamage = 800;
<toughasnails:jelled_slime_leggings>.maxDamage = 600;
<toughasnails:jelled_slime_boots>.maxDamage = 400;