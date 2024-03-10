#
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.mods.IMod;

var modrecipes = [
<galacticraftcore:rocket_workbench>,
<galacticraftcore:refinery>
] as IItemStack[];

for items in modrecipes{
    recipes.remove(items);
}

val mod = loadedMods["galacticraftplanets"];
for item in mod.items {
    recipes.replaceAllOccurences(<minecraft:iron_ingot>, <ore:ingotTungstensteel>, item);
    recipes.replaceAllOccurences(<galacticraftcore:basic_item:3>, <ore:ingotCopper>, item);
}

val mod = loadedMods["galacticraftcore"];
for item in mod.items {
    recipes.replaceAllOccurences(<minecraft:iron_ingot>, <ore:ingotTungstensteel>, item);
    recipes.replaceAllOccurences(<galacticraftcore:basic_item:3>, <ore:ingotCopper>, item);
}

recipes.replaceAllOccurences(<minecraft:lever>, <ore:gemDiamond>, <galacticraftcore:rocket_workbench>);

recipes.addShaped(<galacticraftcore:refinery>,
[[<ercore:tungsten_steel_block>, <galacticraftcore:canister:1>, <ercore:tungsten_steel_block>],
[<ore:stone>, <galacticraftcore:canister:1>, <ore:stone>],
[<ore:compressedSteel>, <pyrotech:furnace_core>, <ore:compressedSteel>]]);