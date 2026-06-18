#
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.mods.IMod;

val mod1 = loadedMods["galacticraftplanets"];
for item in mod1.items {
    recipes.replaceAllOccurences(<minecraft:iron_ingot>, <ore:ingotTungstensteel>, item);
    recipes.replaceAllOccurences(<galacticraftcore:basic_item:3>, <ore:ingotCopper>, item);
}

val mod2 = loadedMods["galacticraftcore"];
for item in mod2.items {
    recipes.replaceAllOccurences(<minecraft:iron_ingot>, <ore:ingotTungstensteel>, item);
    recipes.replaceAllOccurences(<galacticraftcore:basic_item:3>, <ore:ingotCopper>, item);
}

recipes.replaceAllOccurences(<minecraft:lever>, <ercore:tungsten_steel_block>, <galacticraftcore:rocket_workbench>);
recipes.replaceAllOccurences(<minecraft:redstone_torch>, <botania:spreader:1>, <galacticraftcore:rocket_workbench>);