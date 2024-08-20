#
import mods.futuremc.SmithingTable;

SmithingTable.clearDefaults();

SmithingTable.addRecipe(<galacticraftcore:steel_sword>, <futuremc:netherite_ingot>, <futuremc:netherite_sword>);
SmithingTable.addRecipe(<galacticraftcore:steel_shovel>, <futuremc:netherite_ingot>, <futuremc:netherite_shovel>);
SmithingTable.addRecipe(<galacticraftcore:steel_pickaxe>, <futuremc:netherite_ingot>, <futuremc:netherite_pickaxe>);
SmithingTable.addRecipe(<galacticraftcore:steel_axe>, <futuremc:netherite_ingot>, <futuremc:netherite_axe>);
SmithingTable.addRecipe(<galacticraftcore:steel_hoe>, <futuremc:netherite_ingot>, <futuremc:netherite_hoe>);
SmithingTable.addRecipe(<galacticraftcore:steel_helmet>, <futuremc:netherite_ingot>, <futuremc:netherite_helmet>);
SmithingTable.addRecipe(<galacticraftcore:steel_chestplate>, <futuremc:netherite_ingot>, <futuremc:netherite_chestplate>);
SmithingTable.addRecipe(<galacticraftcore:steel_leggings>, <futuremc:netherite_ingot>, <futuremc:netherite_leggings>);
SmithingTable.addRecipe(<galacticraftcore:steel_boots>, <futuremc:netherite_ingot>, <futuremc:netherite_boots>);

recipes.remove(<futuremc:barrel>);
recipes.addShaped("barrel", <futuremc:barrel>,
[[<pyrotech:material:20>, <pyrotech:material:20>, <pyrotech:material:20>],
[<pyrotech:material:20>, <pyrotech:crate_stone>, <pyrotech:material:20>],
[<pyrotech:material:20>, <pyrotech:material:20>, <pyrotech:material:20>]]);