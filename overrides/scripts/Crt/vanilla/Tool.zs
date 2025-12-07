#
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;

<pyrotech:stone_hammer>.definition.setHarvestLevel("hammer", 1);
<pyrotech:gold_hammer>.definition.setHarvestLevel("hammer", 2);
<pyrotech:diamond_hammer>.definition.setHarvestLevel("hammer", 5);
<pyrotech:bone_hammer>.definition.setHarvestLevel("hammer", 1);
<pyrotech:flint_hammer_durable>.definition.setHarvestLevel("hammer", 2);
<pyrotech:bone_hammer_durable>.definition.setHarvestLevel("hammer", 1);
<pyrotech:crude_hammer>.definition.setHarvestLevel("hammer", 0);
<pyrotech:obsidian_hammer>.definition.setHarvestLevel("hammer", 4);
<pyrotech:iron_hammer>.definition.setHarvestLevel("hammer", 3);
<pyrotech:flint_hammer>.definition.setHarvestLevel("hammer", 2);

<pyrotech:diamond_butchers_knife>.definition.setHarvestLevel("knife", 5);
<pyrotech:iron_butchers_knife>.definition.setHarvestLevel("knife", 3);
<pyrotech:obsidian_butchers_knife>.definition.setHarvestLevel("knife", 4);
<pyrotech:flint_butchers_knife>.definition.setHarvestLevel("knife", 2);
<pyrotech:gold_butchers_knife>.definition.setHarvestLevel("knife", 2);
<pyrotech:bone_butchers_knife>.definition.setHarvestLevel("knife", 1);
<pyrotech:stone_butchers_knife>.definition.setHarvestLevel("knife", 1);
<pyrotech:iron_hunters_knife>.definition.setHarvestLevel("knife", 3);
<pyrotech:obsidian_hunters_knife>.definition.setHarvestLevel("knife", 4);
<pyrotech:gold_hunters_knife>.definition.setHarvestLevel("knife", 2);
<pyrotech:bone_hunters_knife>.definition.setHarvestLevel("knife", 1);
<pyrotech:diamond_hunters_knife>.definition.setHarvestLevel("knife", 5);
<pyrotech:stone_hunters_knife>.definition.setHarvestLevel("knife", 1);
<pyrotech:flint_hunters_knife>.definition.setHarvestLevel("knife", 2);

<realistictorches:torch_lit>.addTooltip(game.localize("crafttweaker.torch.tooltip"));