#
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

var mod_recipes = [
<adpother:diamond_vacuum_bag>,
<adpother:iron_vacuum_bag>,
<adpother:gold_vacuum_bag>,
<adpother:iron_filter>,
<adpother:gold_filter>,
<adpother:diamond_filter>
] as IItemStack[];

for items in mod_recipes {
    recipes.remove(items);
}

var vacuumbag = [
<adpother:diamond_vacuum_bag>,
<adpother:iron_vacuum_bag>,
<adpother:gold_vacuum_bag>
] as IItemStack[];

var material = [
<ore:gemDiamond>,
<ore:ingotIron>,
<ore:ingotGold>
] as IOreDictEntry[];

var respirator = [
<adpother:diamond_respirator>,
<adpother:iron_respirator>,
<adpother:gold_respirator>
] as IItemStack[];

for i, materials in material {
    var vacuumbags = vacuumbag[i];
    recipes.addShaped(vacuumbags,
        [[<ore:wool>, <ore:slimeball>, <ore:wool>],
        [materials, <usefulbackpacks:backpack:2>, materials],
        [<ore:leather>, <ore:leather>, <ore:leather>]
    ]);
}

for i, materials in material {
    var respirators = respirator[i];
    recipes.addShaped(respirators,
        [[<minecraft:glass_bottle>, <galacticraftcore:oxygen_mask>, <minecraft:glass_bottle>],
        [<ore:leather>, materials, <ore:leather>],
        [<ore:wool>, <ore:treeLeaves>, <ore:wool>]
    ]);
}