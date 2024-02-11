#
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

mods.tconstruct.Alloy.removeRecipe(<liquid:obsidian>);
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
    mods.tconstruct.Melting.addRecipe(liquid * 144, slag, 1000);
}

var fuels = [
<liquid:tungsten_steel>    
] as ILiquidStack[];

for fuel in fuels {
    mods.tconstruct.Fuel.registerFuel(fuel * 2, 200);
}

mods.tconstruct.Melting.addRecipe(<liquid:obsidian> * 72, <pyrotech:material:33>, 1000);

var castliquids =[
<liquid:aluminum>
] as ILiquidStack[];

var castingots = [
<immersiveengineering:metal:1>
] as IItemStack[];

for n, castliquid in castliquids {
    var castingot = castingots[n];
    mods.tconstruct.Casting.addTableRecipe(castingot, null, castliquid, 144, false, 200);
}