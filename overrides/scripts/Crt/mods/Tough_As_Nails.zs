#
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;

var items = [
<toughasnails:wool_helmet>,
<toughasnails:wool_chestplate>,
<toughasnails:wool_leggings>,
<toughasnails:wool_boots>
] as IItemStack[];

for item in items {
    recipes.remove(item);
}

<toughasnails:wool_helmet>.maxDamage = 500;
<toughasnails:wool_chestplate>.maxDamage = 800;
<toughasnails:wool_leggings>.maxDamage = 600;
<toughasnails:wool_boots>.maxDamage = 400;
<toughasnails:jelled_slime_helmet>.maxDamage = 500;
<toughasnails:jelled_slime_chestplate>.maxDamage = 800;
<toughasnails:jelled_slime_leggings>.maxDamage = 600;
<toughasnails:jelled_slime_boots>.maxDamage = 400;