#ignoreBracketErrors
import moretweaker.draconicevolution.FusionCrafting;
import crafttweaker.item.IItemStack;

var items as IItemStack[] = [
<minecraft:ender_chest>,
<mekanism:machineblock:13>,
<projecte:item.pe_gem_density>,
<draconicevolution:celestial_manipulator>
];

for i in items{	
	recipes.remove(i);
}

FusionCrafting.add(<projecte:item.pe_gem_density>.withTag({}), <projecte:item.pe_philosophers_stone>.withTag({}), FusionCrafting.DRACONIC, 1500000, [<minecraft:obsidian>, <minecraft:obsidian>, <environmentaltech:aethium_crystal>, <environmentaltech:aethium_crystal>, <minecraft:diamond_block>, <minecraft:diamond_block>]);
FusionCrafting.add(<mekanism:machineblock:13>, <minecraft:ender_chest>, FusionCrafting.DRACONIC, 2700000, [<mekanism:basicblock:8>, <mekanism:basicblock:8>, <mekanism:controlcircuit>, <mekanism:controlcircuit>]);
FusionCrafting.add(<draconicevolution:draconium_chest>, <mekanism:machineblock:13>.withTag({mekData: {}}), FusionCrafting.DRACONIC, 80000000, [<projecte:rm_furnace>, <usefulbackpacks:backpack:2>, <draconicevolution:draconium_block:1>, <draconicevolution:draconic_core>, <minecraft:crafting_table>, <draconicevolution:wyvern_energy_core>]);
FusionCrafting.add(<fluxnetworks:flux>, <minecraft:gold_block>, FusionCrafting.DRACONIC, 160000, [<minecraft:redstone>, <minecraft:redstone>]);
FusionCrafting.add(<minecraft:ender_chest>, <minecraft:chest>, FusionCrafting.BASIC, 500000, [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:chest>, <minecraft:chest>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:obsidian>, <minecraft:obsidian>]);
FusionCrafting.add(<tconstruct:materials:50>, <tconstruct:metal:5>, FusionCrafting.DRACONIC, 60000000, [<taiga:adamant_dust>, <mekanism:machineblock2:11>.withTag({tier: 0, mekData: {security: 0, ownerUUID: "3c9d692f-0c66-3ac8-9759-dd5a2170d25c", fluidTank: {FluidName: "liquidfusionfuel", Amount: 14000}, Items: []}})]);
FusionCrafting.add(<refinedstorage:storage_disk:4>.withTag({IdLeast: -8625849297576360389 as long, IdMost: -8137864693304571895 as long}), <refinedstorage:storage_housing>, FusionCrafting.DRACONIC, 2147483647, [<refinedstorage:storage_part:3>, <refinedstorage:storage_part:3>, <minecraft:skull:5>, <minecraft:skull:5>, <refinedstorage:storage_part:3>, <refinedstorage:storage_part:3>]);
FusionCrafting.add(<pyrotech:generated_pile_slag_iridium>, <pyrotech:generated_pile_slag_iron>,  FusionCrafting.DRACONIC, 20480000, [<minecraft:end_rod>, <minecraft:end_rod>, <taiga:obsidioritecobble_block>, <taiga:obsidioritecobble_block>]);

var inputs = [
<draconicevolution:draconium_ingot>,
<draconicevolution:draconic_ingot>
] as IItemStack[];

var outputs = [
<draconicevolution:draconium_block>,
<draconicevolution:draconic_block>
] as IItemStack[];

for i, input in inputs {
	var output = outputs[i];
	mods.mekanism.enrichment.addRecipe(input * 9, output);
}

recipes.addShaped(<draconicevolution:celestial_manipulator>,
[[<ore:blockRedstone>, <ore:blockGold>, <ore:blockRedstone>],
[<draconicevolution:draconium_ingot>, <minecraft:dragon_egg>, <draconicevolution:draconium_ingot>],
[<minecraft:iron_ingot>, <draconicevolution:wyvern_core>, <minecraft:iron_ingot>]]);