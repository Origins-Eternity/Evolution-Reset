#
#priority 1000
import mods.tconstruct.Drying;
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
<tconstruct:tooltables:4>,
<tconstruct:tooltables>
] as IItemStack[];

for items in modrecipes{
    recipes.remove(items);
}

furnace.remove(<tconstruct:materials>);

function tic2Dying(output as IItemStack, input as IIngredient, time as int){
    mods.tconstruct.Drying.removeRecipe(output);
    mods.tconstruct.Drying.addRecipe(output, input, time);
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
[<tconstruct:materials>, <pyrotech:brick_tank>, <tconstruct:materials>], 
[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]]);

recipes.addShaped(<tconstruct:faucet>, 
[[null, null, null],
[<tconstruct:materials>, <pyrotech:faucet_brick>, <tconstruct:materials>], 
[null, <tconstruct:materials>, null]]);

recipes.addShaped(<tconstruct:tooltables:4>,
[[<pyrotech:material:20>, <pyrotech:material:20>, <pyrotech:material:20>],
[<pyrotech:material:20>, <pyrotech:crate_stone>, <pyrotech:material:20>],
[<pyrotech:material:20>, <pyrotech:material:20>, <pyrotech:material:20>]]);