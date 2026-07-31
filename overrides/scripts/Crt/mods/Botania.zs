#
import crafttweaker.item.IItemStack;

recipes.removeByRecipeName("botania:fertilizer_dye");
recipes.replaceAllOccurences(<minecraft:dye:15>, <pyrotech:mulch>, <botania:fertilizer>);

var botbanlist = [
<botania:pylon:*>,
<botania:altar>,
<botania:runealtar>,
<botania:brewery>
] as IItemStack[];

for i in botbanlist{
    recipes.remove(i);
}

var Apothecary as IItemStack[] = [
<botania:specialflower>.withTag({type: "puredaisy"}),
<botania:specialflower>.withTag({type: "endoflame"})
];

for j in Apothecary{
    mods.botania.Apothecary.removeRecipe(j);
}

recipes.addShaped(<botania:pylon:1>, 
[[null, <botania:manaresource:18>, null],
[<botania:manaresource:18>, <minecraft:nether_star>, <botania:manaresource:18>],
[null, <minecraft:ender_eye>, null]]);

recipes.addShaped(<botania:pylon:2>, 
[[null, <botania:manaresource:8>, null],
[<botania:manaresource:7>, <minecraft:nether_star>, <botania:manaresource:7>],
[null, <botania:manaresource:8>, null]]);