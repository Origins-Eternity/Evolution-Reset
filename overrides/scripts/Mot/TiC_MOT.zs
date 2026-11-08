#
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.tconstruct.Drying;
import mods.tconstruct.Melting;
import mods.tcomplement.Blacklist;
import mods.tcomplement.highoven.HighOven;

Drying.removeRecipe(<minecraft:leather>);
Alloy.removeRecipe(<liquid:obsidian>);
Alloy.removeRecipe(<liquid:pigiron>);
Alloy.removeRecipe(<liquid:tungsten_steel>);
HighOven.removeMixRecipe(<liquid:pigiron>);
HighOven.removeMixRecipe(<liquid:steel>);
Melting.removeRecipe(<liquid:clay>);
Melting.removeRecipe(<liquid:obsidian>, <minecraft:obsidian>);
Melting.removeEntityMelting(<entity:minecraft:villager>);

function tic2Dying(output as IItemStack, input as IIngredient, time as int){
    Drying.removeRecipe(output);
    Drying.addRecipe(output, input, time);
}

tic2Dying(<tconstruct:dried_clay>, <minecraft:clay>, 180 * 20);
tic2Dying(<tconstruct:materials:2>, <minecraft:clay_ball>, 60 * 20);
tic2Dying(<tconstruct:edible:23>, <minecraft:fish:3>, 120 * 20);
tic2Dying(<tconstruct:edible:22>, <minecraft:fish:2>, 120 * 20);
tic2Dying(<tconstruct:edible:21>, <minecraft:fish:1>, 120 * 20);
tic2Dying(<tconstruct:edible:20>, <minecraft:fish>, 120 * 20);
tic2Dying(<tconstruct:edible:15>, <minecraft:rabbit>, 120 * 20);
tic2Dying(<tconstruct:edible:14>, <minecraft:mutton>, 120 * 20);
tic2Dying(<tconstruct:edible:13>, <minecraft:porkchop>, 120 * 20);
tic2Dying(<tconstruct:edible:12>, <minecraft:chicken>, 120 * 20);
tic2Dying(<tconstruct:edible:11>, <minecraft:beef>, 120 * 20);
tic2Dying(<tconstruct:edible:10>, <minecraft:rotten_flesh>, 150 * 20);

Melting.addRecipe(<liquid:obsidian> * 72, <pyrotech:material:33>);

var castliquids =[
<liquid:gold>,
<liquid:copper>,
<liquid:tin>
] as ILiquidStack[];

var castitems = [
<minecraft:golden_apple>,
<immersiveengineering:metal>,
<galacticraftcore:basic_item:4>
] as IItemStack[];

var casts = [
<minecraft:apple>,
<ercore:ingot_clay_cast>,
<ercore:ingot_clay_cast>
] as IIngredient[];

var consumes = [
1152,
144,
144
] as int[];

for n, castliquid in castliquids {
    var castitem = castitems[n];
    var cast = casts[n];
    var consume = consumes[n];
    Casting.addTableRecipe(castitem, cast, castliquid, consume, true);
}

val materials = [
<pyrotech:refractory_brick_stairs>,
<pyrotech:tar_collector:1>,
<pyrotech:material:4>,
<pyrotech:material:5>,
<pyrotech:material:9>,
<pyrotech:material:35>,
<pyrotech:bucket_refractory>,
<pyrotech:faucet_brick>,
<pyrotech:refractory_brick_block>,
<pyrotech:bucket_refractory_unfired>,
<pyrotech:refractory_brick_slab>,
<pyrotech:refractory_brick_wall>,
<pyrotech:refractory_door>
] as IItemStack[];

val outputs = [
432,
504,
144,
72,
72,
36,
216,
288,
288,
216,
144,
288,
432
] as int[];

for m, material in materials {
    var output = outputs[m];
    Melting.addRecipe(<liquid:clay> * output, material);
}

var wastes = [
<minecraft:anvil>,
<minecraft:chest>,
<minecraft:bucket>,
<minecraft:hopper>,
<minecraft:shield>,
<minecraft:compass>,
<minecraft:minecart>,
<minecraft:cauldron>,
<minecraft:iron_bars>,
<minecraft:iron_door>,
<minecraft:iron_trapdoor>,
<minecraft:tripwire_hook>,
<immersiveengineering:tool:1>,
<futuremc:smithing_table>,
<futuremc:chain>
] as IItemStack[];

for waste in wastes {
    Blacklist.addRecipe(<liquid:iron>, waste);
}

function addIronRecycle(input as IItemStack, mount as int) {
    Melting.removeRecipe(<liquid:iron>, input);
    HighOven.addMeltingOverride(<liquid:iron> * mount, input);
}

addIronRecycle(<minecraft:rail>, 54);
addIronRecycle(<minecraft:detector_rail>, 144);
addIronRecycle(<minecraft:activator_rail>, 144);
addIronRecycle(<minecraft:iron_horse_armor>, 576);

Casting.addBasinRecipe(<pyrotech:living_tar>, null, <liquid:living_tar>, 1000);