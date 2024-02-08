#
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

mods.tconstruct.Melting.removeRecipe(<liquid:obsidian>);

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
<liquid:dilithium_fluid>,
<liquid:abyssum_fluid>,
<liquid:eezo_fluid> ,
<liquid:osram_fluid>,
<liquid:palladium_fluid>,
<liquid:prometheum_fluid>,
<liquid:valyrium_fluid>,
<liquid:uru_fluid>,
<liquid:tiberium_fluid>,
<liquid:vibranium_fluid>,
<liquid:tungsten>,
<liquid:iridium>
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
<pyrotech:generated_pile_slag_dilithium>,
<pyrotech:generated_pile_slag_abyssum>,
<pyrotech:generated_pile_slag_eezo> ,
<pyrotech:generated_pile_slag_osram>,
<pyrotech:generated_pile_slag_palladium>,
<pyrotech:generated_pile_slag_prometheum>,
<pyrotech:generated_pile_slag_valyrium>,
<pyrotech:generated_pile_slag_uru>,
<pyrotech:generated_pile_slag_tiberium>,
<pyrotech:generated_pile_slag_vibranium>,
<pyrotech:generated_pile_slag_tungsten>,
<pyrotech:generated_pile_slag_iridium>
] as IItemStack[];

for i, liquid in liquids {
    var slag = slags[i];
    mods.tconstruct.Melting.addRecipe(liquid * 144, slag, 1000);
}

var fuels = [
<liquid:obsidian_magic>,
<liquid:tungsten_steel>    
] as ILiquidStack[];

for fuel in fuels {
    mods.tconstruct.Fuel.registerFuel(fuel * 2, 200);
}

var removeliquids = [
<liquid:fractum_fluid>,
<liquid:obsidian>,
<liquid:seismum_fluid>,
<liquid:iox_fluid>,
<liquid:obsidiorite_fluid>,
<liquid:adamant_fluid>
] as ILiquidStack[];

for removeliquid in removeliquids {
    mods.tconstruct.Alloy.removeRecipe(removeliquid);
}

mods.tconstruct.Melting.addRecipe(<liquid:obsidian_magic> * 72,<ercore:obsidian_magic_shard>, 1000);

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
mods.tconstruct.Alloy.addRecipe(<liquid:fractum_fluid> * 2, [<liquid:tiberium_fluid> * 3, <liquid:obsidian_magic> * 3, <liquid:abyssum_fluid> * 1]);
mods.tconstruct.Alloy.addRecipe(<liquid:seismum_fluid> * 4, [<liquid:tiberium_fluid> * 2, <liquid:obsidian_magic> * 4, <liquid:eezo_fluid> * 1]);
mods.tconstruct.Alloy.addRecipe(<liquid:iox_fluid> * 1, [<liquid:obsidian_magic> * 1, <liquid:eezo_fluid> * 1, <liquid:abyssum_fluid> * 1, <liquid:meteorite_fluid> * 1, <liquid:ovium_fluid> * 1]);
mods.tconstruct.Alloy.addRecipe(<liquid:iox_fluid> * 1, [<liquid:eezo_fluid> * 2, <liquid:abyssum_fluid> * 2, <liquid:meteorite_fluid> * 9, <liquid:ovium_fluid> * 2]);
mods.tconstruct.Alloy.addRecipe(<liquid:obsidiorite_fluid> * 1, [<liquid:meteorite_fluid> * 1 , <liquid:obsidian_magic> * 1]);
mods.tconstruct.Alloy.addRecipe(<liquid:adamant_fluid> * 4, [<liquid:vibranium_fluid> * 2, <liquid:solarium_fluid> * 3, <liquid:iox_fluid> * 5, <liquid:iridium> * 3]);

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