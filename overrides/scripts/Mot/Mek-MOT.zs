#ignoreBracketErrors
import crafttweaker.item.IItemStack;

var parts = [
<projecte:item.pe_fuel:2>,
<projecte:item.pe_fuel:1>,
<projecte:item.pe_fuel>,
<refinedstorage:quartz_enriched_iron>,
<tconstruct:materials:16>,
<environmentaltech:erodium>
] as IItemStack[];

var blocks = [
<projecte:fuel_block:2>,
<projecte:fuel_block:1>,
<projecte:fuel_block>,
<refinedstorage:quartz_enriched_iron_block>,
<tconstruct:metal:6>,
<tconstruct:large_plate>.withTag({Material: "erodium"})
] as IItemStack[];

for i, part in parts {
    var block = blocks[i];
    mods.mekanism.enrichment.addRecipe(part * 9, block);
}

mods.mekanism.chemical.injection.addRecipe(<mekanism:oreblock> * 32, <gas:sulfuricAcid>, <tconstruct:shard>.withTag({Material: "iridium"}));
mods.mekanism.combiner.addRecipe(<tconstruct:shard>.withTag({Material: "iridium"}), <tconstruct:shard>.withTag({Material: "osmium"}), <tconstruct:shard>.withTag({Material: "osmiridium"}));

mods.mekanism.sawmill.removeRecipe(<minecraft:jukebox>);
mods.mekanism.sawmill.addRecipe(<minecraft:jukebox>, <minecraft:planks> * 7, <minecraft:stick> * 3, 0.3);