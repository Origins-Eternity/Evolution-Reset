#
#priority 99998
import crafttweaker.block.IBlockDefinition;
import crafttweaker.data.IData;
import crafttweaker.game.IGame;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.mods.IMod;
import crafttweaker.oredict.IOreDictEntry;

import scripts.Crt.utils.OredictUtil;

var oredictMap as IIngredient[][IOreDictEntry] = {
    <ore:dirt> : [
        <biomesoplenty:dirt:8>,
        <biomesoplenty:dirt>,
        <biomesoplenty:dirt:9>,
        <biomesoplenty:dirt:1>,
        <biomesoplenty:dirt:10>,
        <biomesoplenty:dirt:2>
        ],
    <ore:doorWood> : [
        <minecraft:trapdoor>,
        <minecraft:wooden_door>
    ],
    <ore:flower> : [
        <minecraft:red_flower:*>,
        <minecraft:yellow_flower>,
        <minecraft:double_plant:*>
    ],
    <ore:artisansTool> : [
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
    ],
    <ore:artisansToolslow> : [
        <ore:artisansHammer>,
        <ore:artisansTSquare>,
        <ore:artisansCarver>,
        <ore:constructionWand>
    ],
    <ore:vacuumbag> : [
        <adpother:diamond_vacuum_bag>,
        <adpother:iron_vacuum_bag>,
        <adpother:gold_vacuum_bag>
    ],
    <ore:flower> : [
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
    ],
    <ore:blockOne> : [
        <ore:oreCopper>,
        <ore:oreTin>,
        <ore:oreAluminium>,
        <ore:oreLead>,
    ],
    <ore:blockTwo> : [
        <ore:oreGold>,
        <ore:oreIron>,
        <ore:oreSilver>,
        <ore:oreUranium>,
        <ore:oreCobalt>,
        <ore:oreArdite>,
        <ore:oreEmerald>,
        <ore:blockCopper>,
        <ore:blockTin>,
        <ore:blockAluminium>,
        <ore:blockBronze>
    ],
    <ore:blockThree> : [
        <ore:oreTitanium>,
        <ore:blockIron>,
        <ore:oreTungsten>
    ],
    <ore:blockFour> : [
        <ore:oreDiamond>,
        <ore:blockDiamond>
    ],
    <ore:erstone> : [
        <ore:stone>,
        <ore:cobblestone>,
        <ore:blockMossy>
    ],
    <ore:eroreDiamond> : [
        <ore:oreDiamond>,
        <ore:gemDiamond>
    ],
    <ore:eroreEmerald> : [
        <ore:oreEmerald>,
        <ore:gemEmerald>
    ]
};

for oredict in oredictMap {
    var ingredients as IIngredient[] = oredictMap[oredict];
    OredictUtil.addOredictIngredients(oredict, ingredients);
}

<ore:mushroom>.add(<minecraft:red_mushroom>);
<ore:mushroom>.add(<minecraft:brown_mushroom>);
<ore:string>.add(<pyrotech:material:14>);
<ore:carbon>.addAll(<ore:coal>);
<ore:carbon>.addAll(<ore:charcoal>);
<ore:chest>.add(<immersiveengineering:wooden_device0>);
<ore:grout>.add(<tconstruct:soil>);
<ore:blockSlakedlime>.add(<ercore:slakedlime_block>);
<ore:steel>.add(<immersiveengineering:metal:8>);
<ore:whitesand>.add(<minecraft:sand>);
<ore:whitesand>.add(<biomesoplenty:white_sand>);
<ore:gravel>.add(<biomesoplenty:dried_sand>);
<ore:radsand>.add(<minecraft:sand:1>);
<ore:skull>.add(<minecraft:skull:*>);
<ore:ergravel>.addAll(<ore:gravel>);
<ore:sandpile>.add(<pyrotech:rock:5>);
<ore:sandpile>.add(<pyrotech:rock:9>);
<ore:ballClay>.add(<minecraft:clay_ball>);
<ore:oreTungsten>.add(<ercore:tungsten_ore>);
<ore:oreCopper>.add(<ercore:copper_ore>);
<ore:oreTin>.add(<ercore:tin_ore>);
<ore:blockThree>.add(<biomesoplenty:hard_ice>);
<ore:blockThree>.add(<minecraft:obsidian>);
<ore:erstone>.add(<biomesoplenty:grass>);
<ore:erstone>.add(<biomesoplenty:grass:1>);
<ore:blockFour>.add(<minecraft:beacon>);
<ore:blockOne>.add(<minecraft:stonebrick:*>);
<ore:blockTwo>.add(<minecraft:piston>);
<ore:blockTwo>.add(<minecraft:sticky_piston>);
<ore:doorIron>.add(<minecraft:iron_door>);
<ore:doorIron>.add(<minecraft:iron_trapdoor>);
<ore:powderCement>.add(<ercore:cement_powder>);
<ore:craftTable>.add(<minecraft:crafting_table>);
<ore:furnace>.add(<minecraft:furnace>);
<ore:oreTitanium>.addAll(<ore:oreIlmenite>);

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
<pyrotech:obsidian_sword:*>,
<botania:terrapick>
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