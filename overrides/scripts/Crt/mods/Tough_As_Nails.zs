#ignoreBracketErrors
import crafttweaker.item.IItemStack;

var items = [
<toughasnails:wool_helmet>,
<toughasnails:wool_chestplate>,
<toughasnails:wool_leggings>,
<toughasnails:wool_boots>
] as IItemStack[];

for item in items {
    recipes.remove(item);
}