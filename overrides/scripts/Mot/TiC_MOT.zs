#
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

mods.tconstruct.Alloy.removeRecipe(<liquid:obsidian>);

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

var nuggetliquids = [
<liquid:tungsten>,
<liquid:tungsten_steel>,
<liquid:tungsten_carbide>
] as ILiquidStack[];

var nuggets = [
<ercore:tungsten_nugget>,
<ercore:tungsten_steel_nugget>,
<ercore:tungsten_carbide_nugget>
] as IItemStack[];

for j, nuggetliquid in nuggetliquids {
    var nugget = nuggets[j];
    mods.tconstruct.Melting.addRecipe(nuggetliquid * 16, nugget, 1000);
}

var ingotliquids = [
<liquid:tungsten>,
<liquid:tungsten_steel>,
<liquid:tungsten_carbide>
] as ILiquidStack[];

var ingots = [
<ercore:tungsten_ingot>,
<ercore:tungsten_steel_ingot>,
<ercore:tungsten_carbide_ingot>
] as IItemStack[];

for k, ingotliquid in ingotliquids {
    var ingot = ingots[k];
    mods.tconstruct.Melting.addRecipe(ingotliquid * 144, ingot, 1000);
}

mods.tconstruct.Alloy.addRecipe(<liquid:tungsten_steel> * 1, [<liquid:tungsten> * 1, <liquid:steel> * 3]);

var castliquids =[
<liquid:aluminum>,
<liquid:tungsten>
] as ILiquidStack[];

var castingots = [
<immersiveengineering:metal:1>,
<ercore:tungsten_ingot>
] as IItemStack[];

for n, castliquid in castliquids {
    var castingot = castingots[n];
    mods.tconstruct.Casting.addTableRecipe(castingot, null, castliquid, 144, false, 200);
}