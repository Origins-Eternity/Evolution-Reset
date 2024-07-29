#
#priority 0
import crafttweaker.item.IItemStack;

val banlist = [
<minecraft:flint_and_steel>,
<minecraft:iron_ingot>,
<minecraft:gold_ingot>,
<minecraft:obsidian>,
<immersiveengineering:metal:8>,
<minecraft:emerald>,
<minecraft:redstone>,
<immersiveengineering:metal>,
<firstaid:morphine>,
<minecraft:bucket>,
<minecraft:water_bucket>,
<minecraft:lava_bucket>,
<minecraft:diamond>,
<minecraft:iron_ore>,
<minecraft:fire_charge>,
<minecraft:beetroot>,
<minecraft:golden_apple:1>,
<minecraft:enchanted_book>,
<ercore:crafting_table_blueprint>,
<ercore:furnace_core_blueprint>,
<ercore:wither_forge_blueprint>,
<ercore:vacuum_bag_blueprint>,
<ercore:gunpowder_blueprint>,
<ercore:large_backpack_blueprint>,
<ercore:toxic_mask_blueprint>,
<botania:manabottle>,
<minecraft:tnt>
] as IItemStack[];

for items in banlist {
mods.ltt.LootTable.removeGlobalItem(items.definition.id);
}