#
import crafttweaker.item.IItemStack;

recipes.removeByRecipeName("botania:fertilizer_dye");
recipes.replaceAllOccurences(<minecraft:dye:15>, <pyrotech:mulch>, <botania:fertilizer>);

var botbanlist = [
<botania:pool>,
<botania:pylon:*>,
<botania:altar>,
<botania:brewery>,
<botania:runealtar>
] as IItemStack[];

for i in botbanlist{
    recipes.remove(i);
}

var Apothecary as IItemStack[] = [
<botania:specialflower>.withTag({type: "puredaisy"}),
<botania:specialflower>.withTag({type: "endoflame"}),
<botania:specialflower>.withTag({type: "gourmaryllis"})
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

recipes.addShaped(<botania:runealtar>, 
[[null, null, null],
[<ore:livingrock>, <ore:livingrock>, <ore:livingrock>],
[<ore:livingrock>, <botania:storage>, <ore:livingrock>]]);