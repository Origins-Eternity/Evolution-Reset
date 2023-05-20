#ignoreBracketErrors
import crafttweaker.item.IItemStack;

var mod_recipes = [
<projecte:item.pe_philosophers_stone>,
<projecte:fuel_block:1>,
<projecte:transmutation_table>,
<projecte:condenser_mk1>,
<projecte:dm_pedestal>,
<projecte:item.pe_time_watch>
] as IItemStack[];

for items in mod_recipes
{
recipes.remove(items);
}

recipes.removeShapeless(<minecraft:diamond> * 2, [<projecte:item.pe_philosophers_stone>, <minecraft:emerald>]);
recipes.removeShapeless(<minecraft:ender_pearl>, [<projecte:item.pe_philosophers_stone>, <minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]);
recipes.removeShapeless(<minecraft:emerald>, [<projecte:item.pe_philosophers_stone>, <minecraft:diamond>, <minecraft:diamond>]);
recipes.removeShapeless(<minecraft:diamond>, [<projecte:item.pe_philosophers_stone>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]);
recipes.removeShapeless(<projecte:item.pe_fuel:2>, [<projecte:item.pe_philosophers_stone>, <projecte:item.pe_fuel:1>, <projecte:item.pe_fuel:1>, <projecte:item.pe_fuel:1>, <projecte:item.pe_fuel:1>]);

mods.botania.ElvenTrade.addRecipe([<projecte:item.pe_fuel:2>], [<projecte:fuel_block:1>]);

recipes.addShaped(<projecte:item.pe_philosophers_stone>,
[[<environmentaltech:litherite_crystal>, <minecraft:emerald>, <environmentaltech:litherite_crystal>],
[<minecraft:emerald>, <minecraft:netherrack>, <minecraft:emerald>],
[<environmentaltech:litherite_crystal>, <minecraft:emerald>, <environmentaltech:litherite_crystal>]]);

recipes.addShaped(<projecte:transmutation_table>,
[[<minecraft:obsidian>, <twilightforest:block_storage:1>, <minecraft:obsidian>],
[<mekanism:reinforcedplasticblock:0>, <projecte:item.pe_philosophers_stone>, <tconstruct:slime:*>],
[<minecraft:obsidian>, <advancedrocketry:moonturf_dark>, <minecraft:obsidian>]]);

recipes.addShaped(<projecte:condenser_mk1>,
[[<advancedrocketry:geode>, <minecraft:diamond>, <advancedrocketry:geode>],
[<minecraft:diamond>, <projecte:alchemical_chest>, <minecraft:diamond>],
[<advancedrocketry:geode>, <minecraft:diamond>, <advancedrocketry:geode>]]);

recipes.addShaped(<projecte:dm_pedestal>,
[[<tconstruct:large_plate>.withTag({Material: "redmatter"}), <tconstruct:large_plate>.withTag({Material: "darkmatter"}), <tconstruct:large_plate>.withTag({Material: "redmatter"})],
[<tconstruct:large_plate>.withTag({Material: "redmatter"}), <tconstruct:large_plate>.withTag({Material: "darkmatter"}), <tconstruct:large_plate>.withTag({Material: "redmatter"})],
[<projecte:matter_block>, <projecte:matter_block>, <projecte:matter_block>]]);

recipes.addShaped(<projecte:item.pe_time_watch>.withTag({}),
[[<projecte:matter_block>, <ore:glowstone>, <projecte:matter_block>],
[<ore:obsidian>, <projecte:item.pe_klein_star:5>, <ore:obsidian>],
[<projecte:matter_block>, <ore:glowstone>, <projecte:matter_block>]]);