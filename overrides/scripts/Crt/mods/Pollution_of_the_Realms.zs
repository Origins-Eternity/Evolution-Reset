#
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

var mod_recipes = [
<adpother:iron_filter>,
<adpother:gold_filter>,
<adpother:diamond_filter>
] as IItemStack[];

for items in mod_recipes {
    recipes.remove(items);
}