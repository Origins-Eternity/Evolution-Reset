#
#priority 1
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var modrecipes = [
<tconstruct:seared_furnace_controller>,
<tconstruct:smeltery_controller>,
<tconstruct:soil>,
<tconstruct:tooltables:3>,
<tconstruct:smeltery_io>,
<tconstruct:seared_tank>,
<tconstruct:faucet>,
<tconstruct:tooltables>,
<tcomplement:melter>
] as IItemStack[];

for items in modrecipes{
    recipes.remove(items);
}

furnace.remove(<tconstruct:materials>);

recipes.addShaped(<tconstruct:smeltery_controller>, 
[[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
[<tconstruct:materials>, <pyrotech:furnace_core>, <tconstruct:materials>], 
[<tconstruct:materials>, <pyrotech:crate_stone>, <tconstruct:materials>]]);

recipes.addShaped("tooltables", <tconstruct:tooltables:3>,
[[<ore:slabWood>, <tconstruct:pattern>, <ore:slabWood>],
[<pyrotech:material:20>, <pyrotech:worktable_stone>, <pyrotech:material:20>],
[<pyrotech:material:20>, null, <pyrotech:material:20>]]);

recipes.addShaped("smeltery_io", <tconstruct:smeltery_io>, 
[[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
[<tconstruct:materials>, <pyrotech:tar_drain:1>, <tconstruct:materials>], 
[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]]);

recipes.addShaped(<tconstruct:seared_tank>, 
[[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
[<tconstruct:materials>, <pyrotech:refractory_glass>, <tconstruct:materials>], 
[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]]);

recipes.addShaped(<tcomplement:melter>, 
[[null, <tconstruct:materials>, null],
[<tconstruct:materials>, <tconstruct:seared_tank>, <tconstruct:materials>], 
[<tconstruct:materials>, <ore:ingotBronze>, <tconstruct:materials>]]);

recipes.addShaped(<tconstruct:faucet>, 
[[null, null, null],
[<tconstruct:materials>, <pyrotech:faucet_brick>, <tconstruct:materials>], 
[null, <tconstruct:materials>, null]]);

var slimes = [
<tconstruct:edible:1>,
<tconstruct:edible:2>,
<tconstruct:edible:4>,
<tconstruct:edible:5>
] as IItemStack[];

var materials = [
<ore:dyeBlue>,
<ore:dyePurple>,
<minecraft:fire_charge>,
<ore:dyePink>
] as IIngredient[];

for i, material in materials {
    var slime = slimes[i];
    recipes.addShapeless(slime, [<minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>, material]);
}

val tcom = loadedMods["tcomplement"];
for item in tcom.items {
    recipes.replaceAllOccurences(<ore:blockGlass>, <pyrotech:refractory_glass>, item);
}

val tcon = loadedMods["tconstruct"];
for item in tcon.items {
    recipes.replaceAllOccurences(<ore:blockGlass>, <pyrotech:refractory_glass>, item);
}