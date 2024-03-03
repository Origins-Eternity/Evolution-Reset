#
#priority 99999
import crafttweaker.item.IItemStack;

recipes.addShapeless(<minecraft:torch>, [<ore:carbon>, <ore:stickWood>, <minecraft:flint_and_steel>.anyDamage().transformDamage(1)]);
recipes.addShapeless(<minecraft:torch>, [<ore:carbon>, <ore:stickWood>, <pyrotech:flint_and_tinder>.anyDamage().transformDamage(1)]);
recipes.addShapeless(<minecraft:torch>, [<ore:carbon>, <ore:stickWood>, <pyrotech:bow_drill>.anyDamage().transformDamage(1)]);

recipes.replaceAllOccurences(<minecraft:furnace>, <pyrotech:furnace_core>);
recipes.replaceAllOccurences(<minecraft:crafting_table>, <ore:craftingTable>);

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
<immersiveengineering:storage:2>
] as IItemStack[];

for items in block {
    recipes.remove(items);
}

var ingot = [
<immersiveengineering:metal:7>,
<immersiveengineering:metal:8>,
<ercore:tungsten_steel_ingot>,
<immersiveengineering:material:19>,
<immersiveengineering:metal:1>,
<immersiveengineering:metal:3>,
<immersiveengineering:metal:2>,
<immersiveengineering:metal:4>,
<immersiveengineering:metal:5>,
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
<minecraft:tnt>,
<minecraft:blaze_powder>,
<minecraft:crafting_table>,
<minecraft:bucket>,
<minecraft:furnace>,
<minecraft:light_weighted_pressure_plate>,
<minecraft:stone_pickaxe>,
<minecraft:heavy_weighted_pressure_plate>,
<minecraft:flint>,
<minecraft:bed:*>,
<minecraft:wool:*>,
<minecraft:brewing_stand>,
<minecraft:sugar>,
<minecraft:chest>,
<minecraft:gunpowder>,
<tconstruct:materials>
] as IItemStack[];

for items in game_recipes {
    recipes.remove(items);
}

var myLogs = [<minecraft:log:0>,<minecraft:log:1>,<minecraft:log:2>,<minecraft:log:3>,<minecraft:log2>,<minecraft:log2:1>] as IItemStack[];
var myPlanks = [<minecraft:planks:0>,<minecraft:planks:1>,<minecraft:planks:2>,<minecraft:planks:3>,<minecraft:planks:4>,<minecraft:planks:5>] as IItemStack[];
var mySlabs = [<minecraft:wooden_slab>,<minecraft:wooden_slab:1>,<minecraft:wooden_slab:2>,<minecraft:wooden_slab:3>,<minecraft:wooden_slab:4>,<minecraft:wooden_slab:5>] as IItemStack[];

var diamond = <artisanworktables:artisans_handsaw_diamond>.anyDamage().transformDamage(5);

for i, log in myLogs {
    var plank = myPlanks[i];
    recipes.addShapeless(plank * 4, [log, diamond]);
}

for j, plank in myPlanks {
    var slab = mySlabs[j];
    recipes.addShapeless(slab * 3, [plank, diamond]);
}

var sticks = [
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>,
<minecraft:stick>
] as IItemStack[];

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

for i, handsaw in handsaws {
    var sticks = sticks[i];
    recipes.addShapeless(sticks * 2, [<ore:plankWood>, handsaw.anyDamage().transformDamage(5)]);
}

recipes.addShaped(<artisanworktables:workshop:5>,
[[<ore:ingotSteel>, <ore:plateCopper>, <ore:ingotSteel>],
[<ore:blockCopper>, <artisanworktables:workstation:5>, <ore:blockCopper>],
[<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<artisanworktables:workshop:3>,
[[<ore:ingotSteel>, <ore:plateIron>, <ore:ingotSteel>],
[<ore:blockIron>, <artisanworktables:workstation:3>, <ore:blockIron>],
[<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<artisanworktables:workshop:6>,
[[<pyrotech:material:16>, <ore:plateCopper>, <pyrotech:material:16>],
[<ore:blockSteel>, <artisanworktables:workstation:6>, <ore:blockSteel>],
[<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<artisanworktables:workshop:14>,
[[<pyrotech:material:16>, <minecraft:stone_slab:4>, <pyrotech:material:16>],
[<ore:stoneGranitePolished>, <artisanworktables:workstation:14>, <ore:stoneGranitePolished>],
[<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<artisanworktables:workshop>,
[[<ore:ingotGold>, <ore:plateGold>, <ore:ingotGold>],
[<ore:wool>, <artisanworktables:workstation>, <ore:wool>],
[<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<artisanworktables:workshop:13>,
[[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
[<pyrotech:planks_tarred>, <artisanworktables:workstation:13>, <pyrotech:planks_tarred>],
[<pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>]]);

recipes.addShaped("copper_ingot", <galacticraftcore:basic_item:3>,
[[<ore:nuggetCopper>, <ore:nuggetCopper>, <ore:nuggetCopper>],
[<ore:nuggetCopper>, <ore:nuggetCopper>, <ore:nuggetCopper>],
[<ore:nuggetCopper>, <ore:nuggetCopper>, <ore:nuggetCopper>]]);