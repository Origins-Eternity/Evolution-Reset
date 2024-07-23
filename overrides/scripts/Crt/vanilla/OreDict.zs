#
#priority 99999
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.mods.IMod;

<ore:mushroom>.add(<minecraft:red_mushroom>);
<ore:mushroom>.add(<minecraft:brown_mushroom>);
<ore:string>.add(<pyrotech:material:14>);
<ore:carbon>.addAll(<ore:coal>);
<ore:carbon>.addAll(<ore:charcoal>);
<ore:chest>.add(<immersiveengineering:wooden_device0>);
<ore:grout>.add(<tconstruct:soil>);
<ore:blockSlakedlime>.add(<ercore:slakedlime_block>);
<ore:tnt>.add(<minecraft:tnt>);
<ore:steel>.add(<immersiveengineering:metal:8>);
<ore:whitesand>.add(<minecraft:sand>);
<ore:whitesand>.add(<biomesoplenty:white_sand>);
<ore:gravel>.add(<biomesoplenty:dried_sand>);
<ore:radsand>.add(<minecraft:sand:1>);
<ore:skull>.add(<minecraft:skull:*>);
<ore:ergravel>.addAll(<ore:gravel>);
<ore:blockSeven>.addAll(<ore:oreSulfur>);
<ore:sandpile>.add(<pyrotech:rock:5>);
<ore:sandpile>.add(<pyrotech:rock:9>);
<ore:ballClay>.add(<minecraft:clay_ball>);
<ore:oreTungsten>.add(<ercore:tungsten_ore>);
<ore:oreCopper>.add(<ercore:copper_ore>);
<ore:oreTin>.add(<ercore:tin_ore>);
<ore:blockFour>.add(<biomesoplenty:hard_ice>);
<ore:erstone>.add(<biomesoplenty:grass>);
<ore:erstone>.add(<biomesoplenty:grass:1>);
<ore:blockSix>.add(<minecraft:beacon>);
<ore:doorIron>.add(<minecraft:iron_door>);
<ore:doorIron>.add(<minecraft:iron_trapdoor>);
<ore:powderCement>.add(<ercore:cement_powder>);
<ore:craftTable>.add(<minecraft:crafting_table>);
<ore:furnace>.add(<minecraft:furnace>);

var dirts =[
<biomesoplenty:dirt:8>,
<biomesoplenty:dirt>,
<biomesoplenty:dirt:9>,
<biomesoplenty:dirt:1>,
<biomesoplenty:dirt:10>,
<biomesoplenty:dirt:2>
] as IItemStack[];

for d in dirts {
    <ore:dirt>.add(d);
}

var doors =[
<minecraft:wooden_door>,
<minecraft:trapdoor>
] as IItemStack[];

for door in doors {
    <ore:doorWood>.add(door);
}

var shears =[
<pyrotech:clay_shears>,
<pyrotech:stone_shears>,
<pyrotech:bone_shears>,
<pyrotech:flint_shears>,
<pyrotech:gold_shears>,
<pyrotech:diamond_shears>,
<pyrotech:obsidian_shears>,
<minecraft:shears>
] as IItemStack[];

for i in shears {
    <ore:shears>.add(i);
}

var flowers =[
<minecraft:red_flower:*>,
<minecraft:yellow_flower>,
<minecraft:double_plant:*>
] as IItemStack[];

for i in flowers {
    <ore:flower>.add(i);
}

var tools = [
<ore:artisansBeaker>,
<ore:artisansCarver>,
<ore:artisansChisel>,
<ore:artisansCutters>,
<ore:artisansDriver>,
<ore:artisansGroover>,
<ore:artisansHammer>,
<ore:artisansHandsaw>,
<ore:artisansLens>,
<ore:artisansNeedle>,
<ore:artisansPunch>,
<ore:artisansmortar>,
<ore:artisansShears>,
<ore:artisansSifter>,
<ore:artisansSpanner>,
<ore:artisansTrowel>,
<ore:artisansTSquare>,
<ore:constructionWand>
] as IOreDictEntry[];

for tool in tools {
    <ore:artisansTool>.addAll(tool);
}

var toolslows = [
<ore:artisansHammer>,
<ore:artisansTSquare>,
<ore:artisansCarver>,
<ore:constructionWand>
] as IOreDictEntry[];

for toolslow in toolslows {
    <ore:artisansToolslow>.addAll(toolslow);
}

var vacuumbags = [
<adpother:diamond_vacuum_bag>,
<adpother:iron_vacuum_bag>,
<adpother:gold_vacuum_bag>
] as IItemStack[];

for bag in vacuumbags {
    <ore:vacuumbag>.add(bag);
}

var respirators = [
<adpother:diamond_respirator>,
<adpother:iron_respirator>,
<adpother:gold_respirator>
] as IItemStack[];

for r in respirators {
    <ore:respirator>.add(r);
}

var botflowers = [
<ore:mysticFlowerWhite>,
<ore:mysticFlowerLightGray>,
<ore:mysticFlowerOrange>,
<ore:mysticFlowerCyan>,
<ore:mysticFlowerMagenta>,
<ore:mysticFlowerPurple>,
<ore:mysticFlowerLightBlue>,
<ore:mysticFlowerBlue>,
<ore:mysticFlowerYellow>,
<ore:mysticFlowerBrown>,
<ore:mysticFlowerLime>,
<ore:mysticFlowerGreen>,
<ore:mysticFlowerPink>,
<ore:mysticFlowerRed>,
<ore:mysticFlowerGray>,
<ore:mysticFlowerBlack>
] as IOreDictEntry[];

for botflower in botflowers {
    <ore:flower>.addAll(botflower);
}

var oneblocks = [
<ore:oreCopper>,
<ore:oreTin>,
<ore:oreAluminium>,
<ore:oreLead>,
] as IOreDictEntry[];

for oneblock in oneblocks {
    <ore:blockOne>.addAll(oneblock);
}

var twoblocks = [
<ore:oreGold>,
<ore:oreIron>,
<ore:oreSilver>,
<ore:oreUranium>,
<ore:oreCobalt>,
<ore:oreArdite>
] as IOreDictEntry[];

for twoblock in twoblocks {
    <ore:blockTwo>.addAll(twoblock);
}

var threeblocks = [
<ore:stoneAndesite>,
<ore:stoneGranite>,
<ore:stoneDiorite>
] as IOreDictEntry[];

for threeblock in threeblocks {
    <ore:blockThree>.addAll(threeblock);
}
<ore:blockThree>.remove(<minecraft:stone>);

var fourblocks = [
<ore:oreTitanium>,
<ore:blockIron>,
<ore:oreTungsten>
] as IOreDictEntry[];

for fourblock in fourblocks {
    <ore:blockFour>.addAll(fourblock);
}

var fiveblocks = [
<ore:oreDiamond>,
<ore:blockDiamond>
] as IOreDictEntry[];

for fiveblock in fiveblocks {
    <ore:blockFive>.addAll(fiveblock);
}

var stones = [
<ore:stone>,
<ore:cobblestone>,
<ore:blockMossy>
] as IOreDictEntry[];

for stone in stones {
    <ore:erstone>.addAll(stone);
}

var diamondores = [
<ore:oreDiamond>,
<ore:diamond>
] as IOreDictEntry[];

for diamondore in diamondores {
    <ore:eroreDiamond>.addAll(diamondore);
}

var cobblestones = [
<ore:cobblestoneGranite>,
<ore:cobblestoneAndesite>,
<ore:cobblestoneLimestone>,
<ore:cobblestoneDiorite>,
<ore:stoneGranite>,
<ore:stoneAndesite>,
<ore:stoneLimestone>,
<ore:stoneDiorite>
] as IOreDictEntry[];

var erstones = [
<ore:erstoneGranite>,
<ore:erstoneAndesite>,
<ore:erstoneLimestone>,
<ore:erstoneDiorite>,
<ore:erstoneGranite>,
<ore:erstoneAndesite>,
<ore:erstoneLimestone>,
<ore:erstoneDiorite>
] as IOreDictEntry[];

for i, erstone in erstones {
    var cobblestone = cobblestones[i];
    erstone.addAll(cobblestone);
}

for cstone in cobblestones {
    <ore:cstone>.addAll(cstone);
}

for item in <ore:cstone>.items {
    <ore:erstone>.remove(item);
}

var tool = [
<minecraft:stone_axe:*>,
<minecraft:iron_axe:*>,
<minecraft:golden_axe:*>,
<minecraft:diamond_axe:*>,
<minecraft:stone_shovel:*>,
<minecraft:iron_shovel:*>,
<minecraft:golden_shovel:*>,
<minecraft:diamond_shovel:*>,
<minecraft:stone_pickaxe:*>,
<minecraft:iron_pickaxe:*>,
<minecraft:golden_pickaxe:*>,
<minecraft:diamond_pickaxe:*>,
<minecraft:stone_sword:*>,
<minecraft:iron_sword:*>,
<minecraft:golden_sword:*>,
<minecraft:diamond_sword:*>,
<minecraft:stone_hoe:*>,
<minecraft:iron_hoe:*>,
<minecraft:golden_hoe:*>,
<minecraft:diamond_hoe:*>,
<minecraft:iron_helmet:*>,
<minecraft:iron_chestplate:*>,
<minecraft:iron_leggings:*>,
<minecraft:iron_boots:*>,
<minecraft:golden_helmet:*>,
<minecraft:golden_chestplate:*>,
<minecraft:golden_leggings:*>,
<minecraft:golden_boots:*>,
<minecraft:diamond_helmet:*>,
<minecraft:diamond_chestplate:*>,
<minecraft:diamond_leggings:*>,
<minecraft:diamond_boots:*>,
<minecraft:chainmail_helmet:*>,
<minecraft:chainmail_chestplate:*>,
<minecraft:chainmail_leggings:*>,
<minecraft:chainmail_boots:*>,
<minecraft:furnace>,
<conarm:gauntlet_mat_reach>,
<tconstruct:stone_stick>,
<minecraft:bow:*>,
<minecraft:wooden_sword:*>,
<mctb:silverwood_crafting_table>,
<minecraft:crafting_table>,
<minecraft:furnace>,
<minecraft:chainmail_helmet:*>,
<minecraft:chainmail_chestplate:*>,
<minecraft:chainmail_leggings:*>,
<minecraft:chainmail_boots:*>,
<minecraft:stone_axe:*>,
<minecraft:stone_pickaxe:*>,
<minecraft:stone_hoe:*>,
<minecraft:stone_shovel:*>,
<minecraft:stone_sword:*>,
<minecraft:wooden_axe:*>,
<minecraft:wooden_hoe:*>,
<minecraft:wooden_pickaxe:*>,
<minecraft:wooden_shovel:*>,
<pyrotech:obsidian_axe:*>,
<pyrotech:obsidian_hoe:*>,
<pyrotech:obsidian_pickaxe:*>,
<pyrotech:obsidian_shovel:*>,
<pyrotech:obsidian_sword:*>
] as IItemStack[];

for items in tool {	
    <ore:banItems>.add(items);
}

for ban in <ore:banItems>.items {
    ban.maxDamage = 1;
    recipes.remove(ban);
    mods.jei.JEI.hide(ban);
    mods.ltt.LootTable.removeGlobalItem(ban.definition.id);
}

val mod = loadedMods["mctb"];
for table in mod.items {
    <ore:craftingTable>.add(table);
    recipes.remove(table);
}