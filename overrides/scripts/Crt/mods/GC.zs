#
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.mods.IMod;

recipes.removeByRecipeName("galacticraftcore:machine2_0");

var mod_recipes = [
<galacticraftcore:rocket_workbench>,
<galacticraftcore:machine2:4>,
<galacticraftcore:machine:12>
] as IItemStack[];

for items in mod_recipes {
    recipes.remove(items);
}

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

recipes.replaceAllOccurences(<galacticraftcore:air_vent>, <adpother:diamond_filter>, <galacticraftcore:oxygen_concentrator>);
recipes.replaceAllOccurences(<minecraft:anvil>, <galacticraftcore:machine2>, <galacticraftcore:machine4>);

recipes.addShaped(<galacticraftcore:rocket_workbench>,
[[<ore:compressedSteel>, <ore:craftingTable>, <ore:compressedSteel>],
[<ercore:compressed_tungsten_steel>, <ore:waferAdvanced>, <ercore:compressed_tungsten_steel>],
[<ore:compressedSteel>, <immersiveengineering:metal_decoration0:3>, <ore:compressedSteel>]]);

recipes.addShaped(<galacticraftcore:machine2:4>,
[[<ore:ingotAluminum>, <pyrotech:crafting_table_template>, <ore:ingotAluminum>],
[<ore:ingotTungstensteel>, <pyrotech:furnace_core>, <ore:ingotTungstensteel>],
[<galacticraftcore:aluminum_wire>, <immersiveengineering:metal_decoration0:3>, <galacticraftcore:aluminum_wire>]]);

recipes.addShaped(<galacticraftcore:machine:12>,
[[<ore:ingotAluminum>, <immersiveengineering:metal_decoration0:5>, <ore:ingotAluminum>],
[<ore:ingotTungstensteel>, <ore:ingotCopper>, <ore:ingotTungstensteel>],
[<ore:ingotAluminum>, <ore:waferBasic>, <ore:ingotAluminum>]]);