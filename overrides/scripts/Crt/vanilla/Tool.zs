#ignoreBracketErrors
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.command.ICommandManager;
import crafttweaker.events.IEventManager;
import crafttweaker.text.ITextComponent;
import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerInteractEvent;

<minecraft:diamond>.addTooltip(game.localize("crafttweaker.diamond.tooltip"));
<immersiveengineering:metal:8>.addTooltip(game.localize("crafttweaker.metal8.tooltip"));
<ercore:iridium_ore>.addTooltip(game.localize("crafttweaker.iridium_ore.tooltip"));
<immersiveengineering:graphite_electrode>.addTooltip(game.localize("crafttweaker.graphite_electrode.tooltip"));
<minecraft:stone_pickaxe>.withTag({ench: [{lvl: 3 as short, id: 32 as short}, {lvl: 1 as short, id: 34 as short}], RepairCost: 3}).addTooltip(game.localize("crafttweaker.stone_pickaxe.tooltip"));
<fluxnetworks:flux>.addTooltip(game.localize("crafttweaker.flux.tooltip"));
<scalinghealth:crystalshard>.addTooltip(game.localize("crafttweaker.crystalshard.tooltip"));
<minecraft:clay_ball>.addTooltip(game.localize("crafttweaker.clay_ball.tooltip"));
<endercrop:ender_seeds>.addTooltip(game.localize("crafttweaker.enderseeds.tooltip"));

<akashictome:tome>.withTag({"akashictome:data": {tconstruct: {id: "tconstruct:book", Count: 1 as byte, tag: {"akashictome:definedMod": "tconstruct"}, Damage: 0 as short}, botania: {id: "botania:lexicon", Count: 1 as byte, tag: {"akashictome:definedMod": "botania"}, Damage: 0 as short}, conarm: {id: "conarm:book", Count: 1 as byte, tag: {"akashictome:definedMod": "conarm"}, Damage: 0 as short}, ftbquests: {id: "ftbquests:book", Count: 1 as byte, tag: {"akashictome:definedMod": "ftbquests"}, Damage: 0 as short}, immersiveengineering: {id: "immersiveengineering:tool", Count: 1 as byte, tag: {"akashictome:definedMod": "immersiveengineering"}, Damage: 3 as short}, twilightforest: {id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "twilightforest", "patchouli:book": "twilightforest:guide"}, Damage: 0 as short}, valkyrielib: {id: "valkyrielib:guide", Count: 1 as byte, tag: {"akashictome:definedMod": "valkyrielib"}, Damage: 0 as short}, pyrotech: {id: "pyrotech:book", Count: 1 as byte, tag: {"akashictome:definedMod": "pyrotech"}, Damage: 0 as short}}}).addTooltip(game.localize("crafttweaker.tome.tooltip"));
<taiga:tiberium_ore>.addTooltip(game.localize("crafttweaker.tiberium_ore.tooltip"));
<taiga:dilithium_ore>.addTooltip(game.localize("crafttweaker.dilithium_ore.tooltip"));
<taiga:abyssum_ore>.addTooltip(game.localize("crafttweaker.abyssum_ore.tooltip"));
<taiga:eezo_ore>.addTooltip(game.localize("crafttweaker.eezo_ore.tooltip"));
<taiga:osram_ore>.addTooltip(game.localize("crafttweaker.osram_ore.tooltip"));
<taiga:prometheum_ore>.addTooltip(game.localize("crafttweaker.prometheum_ore.tooltip"));
<taiga:palladium_ore>.addTooltip(game.localize("crafttweaker.palladiu_ore.tooltip"));
<taiga:valyrium_ore>.addTooltip(game.localize("crafttweaker.valyrium_ore.tooltip"));
<taiga:uru_ore>.addTooltip(game.localize("crafttweaker.uru_ore.tooltip"));
<taiga:obsidiorite_block>.addTooltip(game.localize("crafttweaker.obsidiorite_block.tooltip"));
<ercore:tungsten_ore>.addTooltip(game.localize("crafttweaker.tungsten_ore.tooltip"));
<pyrotech:kiln_pit>.addTooltip(game.localize("crafttweaker.kiln_pit.tooltip"));
<tconstruct:tool_rod>.withTag({Material: "copper"}).addTooltip(game.localize("crafttweaker.copper_rod.tooltip"));
<draconicevolution:draconium_chest>.addTooltip(game.localize("crafttweaker.draconium_chest.tooltip"));

events.onPlayerInteract(function(event as PlayerInteractEvent) {
    var ser = server.commandManager as ICommandManager;
    var current = event.player.currentItem;
    if (!isNull(current) && current.name == "item.glassBottle") {
        event.player.dropItem(true);
    }
    if (!isNull(current) && current.name == "item.dyePowder.white") {
        event.player.dropItem(true);
    }
    for item in <ore:banitems>.items {
        var toolname = item.definition.id;
	    for i in 0 to 41 {
            var ban = event.player.getInventoryStack(i);
	        if(!isNull(ban) && ban.definition.id == toolname) {
		        ser.executeCommand(server, "clear " + event.player.name + " " + ban.definition.id);
		    }
        }
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
<minecraft:bow>.maxDamage = 1;
<minecraft:wooden_sword>.maxDamage = 1;