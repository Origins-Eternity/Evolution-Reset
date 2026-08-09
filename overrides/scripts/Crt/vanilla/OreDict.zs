#
#priority 2
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
        <ore:artisansAthame>,
        <ore:artisansGrimoire>
    ],
    <ore:bagVacuum> : [
        <adpother:diamond_vacuum_bag>,
        <adpother:iron_vacuum_bag>,
        <adpother:gold_vacuum_bag>
    ],
    <ore:respirator> : [
        <adpother:diamond_respirator>,
        <adpother:iron_respirator>,
        <adpother:gold_respirator>
    ],
    <ore:filter> : [
        <adpother:iron_filter>,
        <adpother:gold_filter>,
        <adpother:diamond_filter>
    ],
    <ore:tubeVacuum> : [
        <adpother:iron_vacuum_tube>,
        <adpother:gold_vacuum_tube>,
        <adpother:diamond_vacuum_tube>
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
        <ore:oreLead>,
        <minecraft:stonebrick:*>
    ],
    <ore:blockTwo> : [
        <ore:oreGold>,
        <ore:oreIron>,
        <ore:oreSilver>,
        <ore:oreNickel>,
        <ore:oreEmerald>,
        <ore:blockCopper>,
        <ore:blockTin>,
        <ore:blockBronze>,
        <ore:blockGold>,
        <minecraft:piston>,
        <minecraft:dispenser>,
        <biomesoplenty:hard_ice>,
    ],
    <ore:blockThree> : [
        <ore:oreLead>,
        <ore:blockIron>,
        <ore:oreAluminum>,
        <ore:blockAluminium>,
        <minecraft:obsidian>,
        <minecraft:sticky_piston>
    ],
    <ore:blockFour> : [
        <ore:oreCobalt>,
        <ore:oreArdite>,
        <ore:oreUranium>,
        <ore:oreSilicon>,
        <ore:oreTungsten>
    ],
    <ore:blockFive> : [
        <ore:oreDesh>,
        <ore:oreDiamond>,
        <ore:oreTitanium>,
        <ore:blockDiamond>,
        <minecraft:beacon>
    ],
    <ore:erstone> : [
        <ore:stone>,
        <ore:cobblestone>,
        <ore:blockMossy>,
        <biomesoplenty:grass>,
        <biomesoplenty:grass:1>
    ],
    <ore:eroreDiamond> : [
        <ore:oreDiamond>,
        <ore:gemDiamond>
    ],
    <ore:eroreEmerald> : [
        <ore:oreEmerald>,
        <ore:gemEmerald>
    ],
    <ore:mushroom> : [
        <minecraft:red_mushroom>,
        <minecraft:brown_mushroom>
    ],
    <ore:whitesand> : [
        <minecraft:sand>,
        <biomesoplenty:white_sand>
    ],
    <ore:sandpile> : [
        <pyrotech:rock:5>,
        <pyrotech:rock:9>
    ],
    <ore:doorIron> : [
        <minecraft:iron_door>,
        <minecraft:iron_trapdoor>
    ],
    <ore:lighter> : [
        <pyrotech:bow_drill>,
        <pyrotech:flint_and_tinder>,
        <pyrotech:bow_drill_durable>,
        <minecraft:flint_and_steel>
    ],
    <ore:toolAxe> : [
        <immersiveengineering:axe_steel>,
        <galaxyspace:cobalt_axe>,
        <galacticraftcore:steel_axe>,
        <galacticraftplanets:desh_axe>,
        <galacticraftplanets:titanium_axe>,
        <netherex:withered_amedian_axe>,
        <netherex:blazed_amedian_axe>,
        <netherex:frosted_amedian_axe>,
        <pyrotech:bone_axe_durable>,
        <pyrotech:flint_axe_durable>,
        <tconstruct:hatchet>.anyDamage(),
        <tconstruct:lumberaxe>.anyDamage()
    ]
};

for oredict in oredictMap {
    var ingredients as IIngredient[] = oredictMap[oredict];
    OredictUtil.addOredictIngredients(oredict, ingredients);
}

<ore:string>.add(<pyrotech:material:14>);
<ore:chest>.add(<immersiveengineering:wooden_device0>);
<ore:grout>.add(<tconstruct:soil>);
<ore:gravel>.add(<biomesoplenty:dried_sand>);
<ore:radsand>.add(<minecraft:sand:1>);
<ore:skull>.add(<minecraft:skull:*>);
<ore:ballClay>.add(<minecraft:clay_ball>);
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
    for item in cobblestone.items {
        <ore:erstone>.remove(item);
    }
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
<botania:terrapick>,
<minecraft:torch>,
<minecraft:ender_chest>,
<tcomplement:manyullyn_helmet:*>,
<tcomplement:manyullyn_chestplate:*>,
<tcomplement:manyullyn_leggings:*>,
<tcomplement:manyullyn_boots:*>,
<tcomplement:steel_helmet:*>,
<tcomplement:steel_chestplate:*>,
<tcomplement:steel_leggings:*>,
<tcomplement:steel_boots:*>,
<tcomplement:knightslime_helmet:*>,
<tcomplement:knightslime_chestplate:*>,
<tcomplement:knightslime_leggings:*>,
<tcomplement:knightslime_boots:*>,
<tcomplement:melter:8>,
<galacticraftcore:refinery>,
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