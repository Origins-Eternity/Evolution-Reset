#
import crafttweaker.item.IItemStack;

var items = [
<twilightforest:block_storage:*>
] as IItemStack[];

for item in items {
    recipes.remove(item);
}

val twilightforest_recipes = [
"twilightforest:giant_blocks/giant_log",
"twilightforest:wood/twilight_oak_planks",
"twilightforest:wood/canopy_planks",
"twilightforest:wood/darkwood_planks",
] as string[];

for i in twilightforest_recipes {
    recipes.removeByRecipeName(i);
}

recipes.addShapeless(<immersiveengineering:metal:8>, [<mekanism:ingot:4>]);
recipes.addShapeless(<twilightforest:steeleaf_ingot>, [<projecte:item.pe_philosophers_stone>, <twilightforest:block_storage>, <twilightforest:block_storage>, <twilightforest:block_storage>, <twilightforest:block_storage>]);
recipes.addShapeless(<twilightforest:block_storage:1>, [<minecraft:iron_block>, <ore:fiery>]);