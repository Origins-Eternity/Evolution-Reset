#
#priority 99999
import crafttweaker.item.IItemStack;

recipes.addShapeless(<realistictorches:torch_lit>, [<realistictorches:torch_unlit>, <minecraft:flint_and_steel>.anyDamage().transformDamage(2)]);
recipes.addShapeless(<realistictorches:torch_lit>, [<realistictorches:torch_unlit>, <pyrotech:flint_and_tinder>.anyDamage().transformDamage(2)]);
recipes.addShapeless(<realistictorches:torch_lit>, [<realistictorches:torch_unlit>, <pyrotech:bow_drill>.anyDamage().transformDamage(2)]);
recipes.addShapeless(<realistictorches:torch_lit>, [<realistictorches:torch_smoldering>, <minecraft:flint_and_steel>.anyDamage().transformDamage(1)]);
recipes.addShapeless(<realistictorches:torch_lit>, [<realistictorches:torch_smoldering>, <pyrotech:flint_and_tinder>.anyDamage().transformDamage(1)]);
recipes.addShapeless(<realistictorches:torch_lit>, [<realistictorches:torch_smoldering>, <pyrotech:bow_drill>.anyDamage().transformDamage(1)]);

recipes.replaceAllOccurences(<minecraft:furnace>, <pyrotech:furnace_core>);
recipes.replaceAllOccurences(<minecraft:stone_pickaxe>, <minecraft:stone>);
recipes.replaceAllOccurences(<minecraft:golden_pickaxe>, <ore:blockGold>);
recipes.replaceAllOccurences(<minecraft:crafting_table>, <ore:craftingTable>);
recipes.replaceAllOccurences(<ore:chest>, <pyrotech:crate_stone>);
recipes.replaceAllOccurences(<ore:chestWood>, <pyrotech:crate_stone>);
recipes.replaceAllOccurences(<minecraft:bow>, <pyrotech:bow_drill_durable>);

var block = [
<minecraft:iron_block>,
<minecraft:gold_block>,
<minecraft:diamond_block>,
<minecraft:emerald_block>,
<minecraft:slime>,
<ercore:slakedlime_block>,
<tconstruct:soil>,
<immersiveengineering:storage:8>,
<minecraft:quartz_block>,
<tconstruct:metal>,
<tconstruct:metal:1>,
<tconstruct:metal:2>,
<tconstruct:metal:3>,
<tconstruct:metal:5>,
<immersiveengineering:storage:7>,
<immersiveengineering:storage:6>,
<immersiveengineering:storage:4>,
<immersiveengineering:storage:3>,
<immersiveengineering:storage:5>,
<immersiveengineering:storage:2>,
<ercore:tungsten_steel_block>
] as IItemStack[];

for items in block {
    recipes.remove(items);
}

var ingot = [
<immersiveengineering:metal:7>,
<immersiveengineering:metal:8>,
<ercore:tungsten_steel_ingot>,
<ercore:tungsten_carbide_ingot>,
<ercore:tungsten_ingot>,
<immersiveengineering:material:19>,
<immersiveengineering:metal:1>,
<immersiveengineering:metal:3>,
<immersiveengineering:metal:2>,
<immersiveengineering:metal:4>,
<immersiveengineering:metal:5>,
<botania:manaresource>,
<botania:manaresource:4>,
<botania:manaresource:7>,
<tconstruct:ingots>,
<tconstruct:ingots:1>,
<tconstruct:ingots:2>,
<tconstruct:ingots:3>,
<tconstruct:ingots:4>,
<tconstruct:ingots:5>
] as IItemStack[];

for items in ingot {
    recipes.remove(items);
}

var nugget = [
<minecraft:gold_nugget>,
<minecraft:iron_nugget>,
<ercore:tungsten_steel_nugget>,
<ercore:tungsten_carbide_nugget>,
<ercore:tungsten_nugget>,
<ercore:tin_nugget>,
<immersiveengineering:metal:20>,
<immersiveengineering:metal:21>,
<immersiveengineering:metal:22>,
<immersiveengineering:metal:24>,
<immersiveengineering:metal:23>,
<immersiveengineering:metal:25>,
<immersiveengineering:metal:26>,
<immersiveengineering:metal:27>,
<immersiveengineering:metal:28>,
<immersiveengineering:metal:29>,
<botania:manaresource:17>,
<botania:manaresource:18>,
<botania:manaresource:19>,
<tconstruct:nuggets>,
<tconstruct:nuggets:1>,
<tconstruct:nuggets:2>,
<tconstruct:nuggets:3>,
<tconstruct:nuggets:4>,
<tconstruct:nuggets:5>
] as IItemStack[];

for items in nugget {
    recipes.remove(items);
}

var game_recipes = [
<minecraft:wool>,
<minecraft:torch>,
<minecraft:bread>,
<minecraft:ladder>,
<minecraft:blaze_powder>,
<minecraft:crafting_table>,
<minecraft:bucket>,
<minecraft:furnace>,
<minecraft:light_weighted_pressure_plate>,
<minecraft:stone_pickaxe>,
<minecraft:heavy_weighted_pressure_plate>,
<minecraft:flint>,
<minecraft:wool:*>,
<minecraft:brewing_stand>,
<minecraft:sugar>,
<minecraft:gunpowder>,
<tconstruct:materials>,
<minecraft:glass_pane>,
<minecraft:leather>
] as IItemStack[];

for items in game_recipes {
    recipes.remove(items);
}

var handsaws = [
<artisanworktables:artisans_handsaw_wood>,
<artisanworktables:artisans_handsaw_stone>,
<artisanworktables:artisans_handsaw_iron>,
<artisanworktables:artisans_handsaw_gold>,
<artisanworktables:artisans_handsaw_diamond>,
<artisanworktables:artisans_handsaw_flint>,
<artisanworktables:artisans_handsaw_bone>,
<artisanworktables:artisans_handsaw_aluminum>,
<artisanworktables:artisans_handsaw_bronze>,
<artisanworktables:artisans_handsaw_boronnitride>,
<artisanworktables:artisans_handsaw_constantan>,
<artisanworktables:artisans_handsaw_nickel>,
<artisanworktables:artisans_handsaw_steel>,
<artisanworktables:artisans_handsaw_silver>,
<artisanworktables:artisans_handsaw_boron>,
<artisanworktables:artisans_handsaw_hardcarbon>,
<artisanworktables:artisans_handsaw_electrum>,
<artisanworktables:artisans_handsaw_lead>,
<artisanworktables:artisans_handsaw_platinum>,
<artisanworktables:artisans_handsaw_invar>,
<artisanworktables:artisans_handsaw_tin>,
<artisanworktables:artisans_handsaw_toughalloy>,
<artisanworktables:artisans_handsaw_copper>,
<artisanworktables:artisans_handsaw_invar>,
<artisanworktables:artisans_handsaw_invar>
] as IItemStack[];

for handsaw in handsaws {
recipes.addShapeless(<minecraft:stick>, [<ore:slabWood>, handsaw.anyDamage().transformDamage(3)]);

var myLogs = [<minecraft:log:0>,<minecraft:log:1>,<minecraft:log:2>,<minecraft:log:3>,<minecraft:log2>,<minecraft:log2:1>] as IItemStack[];
var myPlanks = [<minecraft:planks:0>,<minecraft:planks:1>,<minecraft:planks:2>,<minecraft:planks:3>,<minecraft:planks:4>,<minecraft:planks:5>] as IItemStack[];
var mySlabs = [<minecraft:wooden_slab>,<minecraft:wooden_slab:1>,<minecraft:wooden_slab:2>,<minecraft:wooden_slab:3>,<minecraft:wooden_slab:4>,<minecraft:wooden_slab:5>] as IItemStack[];

for i, log in myLogs {
    var plank = myPlanks[i];
    recipes.addShapeless(plank * 4, [log, handsaw.anyDamage().transformDamage(5)]);
}

for j, plank in myPlanks {
    var slab = mySlabs[j];
    recipes.addShapeless(slab * 2, [plank, handsaw.anyDamage().transformDamage(4)]);
}
}

recipes.addShaped("basic_workshop", <artisanworktables:workshop:5>,
[[<ore:ingotCopper>, <ore:plateCopper>, <ore:ingotCopper>],
[<ore:blockCopper>, <artisanworktables:workstation:5>, <ore:blockCopper>],
[<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<artisanworktables:workshop:3>,
[[<ore:ingotSteel>, <ore:plateIron>, <ore:ingotSteel>],
[<ore:blockIron>, <artisanworktables:workstation:3>, <ore:blockIron>],
[<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<artisanworktables:workshop:6>,
[[<ore:ingotSteel>, <ore:plateCopper>, <ore:ingotSteel>],
[<ore:blockSteel>, <artisanworktables:workstation:6>, <ore:blockSteel>],
[<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>]]);

recipes.addShaped("potter_workshop", <artisanworktables:workshop:14>,
[[<pyrotech:material:16>, <minecraft:stone_slab:4>, <pyrotech:material:16>],
[<ore:stoneGranite>, <artisanworktables:workstation:14>, <ore:stoneGranite>],
[<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<artisanworktables:workshop>,
[[<ore:ingotGold>, <ore:plateGold>, <ore:ingotGold>],
[<ore:wool>, <artisanworktables:workstation>, <ore:wool>],
[<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<artisanworktables:workshop:13>,
[[<pyrotech:material:42>, <pyrotech:material:42>, <pyrotech:material:42>],
[<pyrotech:planks_tarred>, <artisanworktables:workstation:13>, <pyrotech:planks_tarred>],
[<pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>]]);

recipes.addShaped(<artisanworktables:workshop:7>,
[[<ore:blockLapis>, <ore:plateSteel>, <ore:blockLapis>],
[<ore:blockLapis>, <artisanworktables:workstation:7>, <ore:blockLapis>],
[<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>]]);

recipes.addShaped("bow_drill", <pyrotech:bow_drill>,
[[<ore:stickWood>, null, <ore:stickWood>],
[null, <ore:twine>, <ore:stickWood>],
[<ore:stickWood>, <ore:stickWood>, null]]);

recipes.addShaped("brick_kiln", <pyrotech:brick_kiln>,
[[<pyrotech:refractory_brick_block>, <pyrotech:material:5>, <pyrotech:refractory_brick_block>],
[<pyrotech:refractory_brick_block>, <pyrotech:stone_kiln>, <pyrotech:refractory_brick_block>],
[<pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>]]);

recipes.addShaped("brick_oven", <pyrotech:brick_oven>,
[[<pyrotech:refractory_brick_block>, <pyrotech:material:5>, <pyrotech:refractory_brick_block>],
[<pyrotech:refractory_brick_block>, <pyrotech:stone_oven>, <pyrotech:refractory_brick_block>],
[<pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>]]);

recipes.addShaped("brick_sawmill", <pyrotech:brick_sawmill>,
[[<pyrotech:refractory_brick_block>, <pyrotech:material:5>, <pyrotech:refractory_brick_block>],
[<pyrotech:refractory_brick_block>, <pyrotech:stone_sawmill>, <pyrotech:refractory_brick_block>],
[<pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>]]);

recipes.addShaped("brick_crucible", <pyrotech:brick_crucible>,
[[<pyrotech:refractory_brick_block>, <pyrotech:material:5>, <pyrotech:refractory_brick_block>],
[<pyrotech:refractory_brick_block>, <pyrotech:stone_crucible>, <pyrotech:refractory_brick_block>],
[<pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>]]);

brewing.addBrew(<minecraft:potion>, <minecraft:chorus_fruit>, <minecraft:dragon_breath>);

var books = [
<ftbquests:book>,
<spiceoflife:bookfoodjournal>,
<botania:lexicon>,
<pyrotech:book>,
<tconstruct:book>,
<immersiveengineering:tool:3>,
<conarm:book>
] as IItemStack[];

for book in books {
    recipes.addShapeless(book * 2, [book, <minecraft:writable_book>]);
}

recipes.addShapeless(<ercore:herbs>, [<minecraft:bowl>, <pyrotech:strange_tuber>, <pyrotech:material:12>, <botania:petal:*>]);