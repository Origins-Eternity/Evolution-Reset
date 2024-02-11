#
#priority 0
import crafttweaker.item.IItemStack;

val banlist = [
<minecraft:lava_bucket>,
<minecraft:water_bucket>,
<minecraft:flint_and_steel>,
<minecraft:iron_ingot>,
<minecraft:gold_ingot>,
<minecraft:obsidian>,
<immersiveengineering:metal:8>,
<minecraft:emerald>,
<minecraft:redstone>,
<immersiveengineering:metal>,
<minecraft:sand>,
<firstaid:morphine>,
<minecraft:bucket>,
<minecraft:water_bucket>,
<minecraft:lava_bucket>,
<minecraft:diamond>,
<minecraft:iron_ore>,
<minecraft:bread>,
<minecraft:fire_charge>,
<minecraft:beetroot>,
<minecraft:cooked_chicken>,
<minecraft:cooked_beef>,
<minecraft:cooked_rabbit>,
<minecraft:cooked_porkchop>,
<minecraft:cooked_mutton>,
<minecraft:golden_apple:1>,
<minecraft:chainmail_helmet>,
<minecraft:chainmail_chestplate>,
<minecraft:chainmail_leggings>,
<minecraft:chainmail_boots>,
<planetprogression:research_paper_0>
] as IItemStack[];

for items in banlist {
mods.ltt.LootTable.removeGlobalItem(items.definition.id);
}