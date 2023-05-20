#ignoreBracketErrors
#priority 99999
import crafttweaker.item.IItemStack;

recipes.remove(<ore:matal_block>);

recipes.addShapeless(<minecraft:torch>, [<ore:carbon>, <ore:stickWood>, <minecraft:flint_and_steel>.anyDamage().transformDamage(1)]);
recipes.addShapeless(<minecraft:torch>, [<ore:carbon>, <ore:stickWood>, <pyrotech:flint_and_tinder>.anyDamage().transformDamage(1)]);
recipes.addShapeless(<minecraft:torch>, [<ore:carbon>, <ore:stickWood>, <pyrotech:bow_drill>.anyDamage().transformDamage(1)]);

recipes.replaceAllOccurences(<minecraft:furnace>, <pyrotech:furnace_core>);

var ingot = [
<immersiveengineering:metal:7>,
<immersiveengineering:metal:8>,
<mekanism:ingot>,
<mekanism:ingot:1>,
<mekanism:ingot:2>,
<mekanism:ingot:3>,
<mekanism:ingot:4>,
<botania:manaresource>,
<botania:manaresource:4>,
<botania:manaresource:7>,
<ercore:tungsten_steel_ingot>,
<draconicevolution:draconium_ingot>,
<immersiveengineering:material:19>,
<immersiveengineering:metal:1>,
<immersiveengineering:metal:3>,
<immersiveengineering:metal:2>,
<immersiveengineering:metal:4>,
<immersiveengineering:metal:5>,
<taiga:imperomite_ingot>,
<taiga:solarium_ingot>,
<taiga:nihilite_ingot>,
<taiga:adamant_ingot>,
<taiga:dyonite_ingot>,
<taiga:nucleum_ingot>,
<taiga:lumix_ingot>,
<taiga:seismum_ingot>,
<taiga:astrium_ingot>,
<taiga:tiberium_ingot>,
<taiga:aurorium_ingot>,
<taiga:prometheum_ingot>,
<taiga:duranite_ingot>,
<taiga:valyrium_ingot>,
<taiga:vibranium_ingot>,
<taiga:karmesine_ingot>,
<taiga:ovium_ingot>,
<taiga:jauxum_ingot>,
<taiga:terrax_ingot>,
<taiga:palladium_ingot>,
<taiga:osram_ingot>,
<taiga:uru_ingot>,
<taiga:abyssum_ingot>,
<taiga:eezo_ingot>,
<taiga:fractum_ingot>,
<taiga:triberium_ingot>,
<taiga:violium_ingot>,
<taiga:proxii_ingot>,
<taiga:tritonite_ingot>,
<taiga:ignitz_ingot>,
<taiga:niob_ingot>,
<taiga:yrdeen_ingot>,
<taiga:iox_ingot>,
<taiga:meteorite_ingot>,
<taiga:basalt_ingot>,
<taiga:obsidiorite_ingot>,
<taiga:dilithium_ingot>,
<tconstruct:ingots>,
<tconstruct:ingots:1>,
<tconstruct:ingots:2>,
<tconstruct:ingots:3>,
<tconstruct:ingots:4>,
<tconstruct:ingots:5>,
<twilightforest:ironwood_ingot>,
<twilightforest:knightmetal_ingot>
] as IItemStack[];

for items in ingot {
    recipes.remove(items);
}

var nugget = [
<taiga:tiberium_nugget>,
<taiga:aurorium_nugget>,
<taiga:prometheum_nugget>,
<taiga:duranite_nugget>,
<taiga:valyrium_nugget>,
<taiga:vibranium_nugget>,
<taiga:karmesine_nugget>,
<minecraft:gold_nugget>,
<minecraft:iron_nugget>,
<botania:manaresource:17>,
<botania:manaresource:18>,
<botania:manaresource:19>,
<draconicevolution:nugget>,
<draconicevolution:nugget:1>,
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
<mekanism:nugget>,
<mekanism:nugget:1>,
<mekanism:nugget:3>,
<mekanism:nugget:4>,
<mekanism:nugget:5>,
<mekanism:nugget:6>,
<taiga:ovium_nugget>,
<taiga:obsidiorite_nugget>,
<taiga:dilithium_nugget>,
<tconstruct:nuggets>,
<tconstruct:nuggets:1>,
<tconstruct:nuggets:2>,
<tconstruct:nuggets:3>,
<tconstruct:nuggets:4>,
<tconstruct:nuggets:5>,
<taiga:jauxum_nugget>,
<taiga:terrax_nugget>,
<taiga:palladium_nugget>,
<taiga:uru_nugget>,
<taiga:osram_nugget>,
<taiga:abyssum_nugget>,
<taiga:triberium_nugget>,
<taiga:eezo_nugget>,
<taiga:fractum_nugget>,
<taiga:violium_nugget>,
<taiga:proxii_nugget>,
<taiga:tritonite_nugget>,
<taiga:ignitz_nugget>,
<taiga:imperomite_nugget>,
<taiga:solarium_nugget>,
<taiga:nihilite_nugget>,
<taiga:adamant_nugget>,
<taiga:dyonite_nugget>,
<taiga:nucleum_nugget>,
<taiga:lumix_nugget>,
<taiga:seismum_nugget>,
<taiga:astrium_nugget>,
<taiga:niob_nugget>,
<taiga:yrdeen_nugget>,
<taiga:iox_nugget>,
<taiga:meteorite_nugget>,
<taiga:basalt_nugget>
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
<artisanworktables:artisans_handsaw_osmium>,
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

recipes.addShaped(<artisanworktables:workshop:11>,
[[<ore:ingotIron>, <ore:slabWood>, <ore:ingotIron>],
[<ore:stoneBasaltPolished>, <artisanworktables:workstation:11>, <ore:stoneBasaltPolished>],
[<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<artisanworktables:workshop:6>,
[[<pyrotech:material:16>, <ore:plateCopper>, <pyrotech:material:16>],
[<ore:blockSteel>, <artisanworktables:workstation:6>, <ore:blockSteel>],
[<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<artisanworktables:workshop:14>,
[[<pyrotech:material:16>, <minecraft:stone_slab:4>, <pyrotech:material:16>],
[<ore:stoneGranitePolished>, <artisanworktables:workstation:14>, <ore:stoneGranitePolished>],
[<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<artisanworktables:workshop:7>,
[[<ore:blockLapis>, <ore:plateSteel>, <ore:blockLapis>],
[<ore:blockLapis>, <artisanworktables:workstation:7>, <ore:blockLapis>],
[<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<artisanworktables:workshop>,
[[<ore:ingotGold>, <ore:plateGold>, <ore:ingotGold>],
[<ore:wool>, <artisanworktables:workstation>, <ore:wool>],
[<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<artisanworktables:workshop:9>,
[[<immersiveengineering:metal:8>, <minecraft:emerald>, <immersiveengineering:metal:8>],
[<minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"}), <artisanworktables:workstation:9>, <minecraft:potion>.withTag({Potion: "minecraft:strong_leaping"})],
[<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<artisanworktables:workshop:4>,
[[<ore:blockDiamond>, <ore:plateGold>, <ore:blockDiamond>],
[<ore:obsidian>, <artisanworktables:workstation:4>, <ore:obsidian>],
[<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<artisanworktables:workshop:13>,
[[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
[<pyrotech:planks_tarred>, <artisanworktables:workstation:13>, <pyrotech:planks_tarred>],
[<pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>]]);

recipes.addShaped(<minecraft:stone_pickaxe>.withTag({ench: [{lvl: 3 as short, id: 32 as short}, {lvl: 1 as short, id: 34 as short}], RepairCost: 3}),
[[<pyrotech:material:16>, <pyrotech:material:16>, <pyrotech:material:16>],
[null, <minecraft:stick>, null],
[null, <minecraft:stick>, null]]);