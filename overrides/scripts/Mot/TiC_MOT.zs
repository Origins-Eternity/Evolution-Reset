#
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

mods.tconstruct.Drying.removeRecipe(<minecraft:leather>);
mods.tconstruct.Alloy.removeRecipe(<liquid:obsidian>);
mods.tconstruct.Melting.removeRecipe(<liquid:clay>);
mods.tconstruct.Melting.removeRecipe(<liquid:obsidian>, <minecraft:obsidian>);

var liquids = [
<liquid:gold>,
<liquid:iron>,
<liquid:copper>,
<liquid:tin>,
<liquid:aluminum>,
<liquid:silver>,
<liquid:uranium>,
<liquid:lead>,
<liquid:ardite>,
<liquid:cobalt>,
<liquid:tungsten>
] as ILiquidStack[];

var slags = [
<pyrotech:generated_pile_slag_gold>,
<pyrotech:generated_pile_slag_iron>,
<pyrotech:generated_pile_slag_copper>,
<pyrotech:generated_pile_slag_tin>,
<pyrotech:generated_pile_slag_aluminum>,
<pyrotech:generated_pile_slag_silver>,
<pyrotech:generated_pile_slag_uranium>,
<pyrotech:generated_pile_slag_lead>,
<pyrotech:generated_pile_slag_ardite>,
<pyrotech:generated_pile_slag_cobalt>,
<pyrotech:generated_pile_slag_tungsten>
] as IItemStack[];

for i, liquid in liquids {
    var slag = slags[i];
    mods.tconstruct.Melting.addRecipe(liquid * 144, slag);
}

var fuels = [
<liquid:tungsten_steel>    
] as ILiquidStack[];

for fuel in fuels {
    mods.tconstruct.Fuel.registerFuel(fuel * 2, 200);
}

mods.tconstruct.Melting.addRecipe(<liquid:obsidian> * 72, <pyrotech:material:33>);

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
    mods.tconstruct.Casting.addTableRecipe(castitem, cast, castliquid, consume, true);
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
    mods.tconstruct.Melting.addRecipe(<liquid:clay> * output, material);
}