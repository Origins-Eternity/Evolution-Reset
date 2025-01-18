#
#priority 0
import crafttweaker.item.IItemStack;

val banlist = [
<minecraft:flint_and_steel>,
<minecraft:iron_ingot>,
<minecraft:gold_ingot>,
<minecraft:iron_nugget>,
<minecraft:gold_nugget>,
<minecraft:obsidian>,
<immersiveengineering:material>,
<immersiveengineering:pickaxe_steel>,
<immersiveengineering:axe_steel>,
<immersiveengineering:shovel_steel>,
<immersiveengineering:sword_steel>,
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
<minecraft:tnt>,
<botania:overgrowthseed>,
<minecraft:gunpowder>
] as IItemStack[];

for items in banlist {
mods.ltt.LootTable.removeGlobalItem(items.definition.id);
}

var tables = [
"botania:inject/abandoned_mineshaft",
"botania:inject/jungle_temple",
"botania:inject/village_blacksmith",
"botania:inject/simple_dungeon",
"botania:inject/stronghold_corridor",
"botania:inject/desert_pyramid",
"botania:inject/spawn_bonus_chest"
] as string[];

for table in tables {
    mods.ltt.LootTable.removeItem(table, "main", <botania:manaresource>.definition.id);
}