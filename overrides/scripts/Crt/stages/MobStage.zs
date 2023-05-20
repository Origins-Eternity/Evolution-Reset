#ignoreBracketErrors
import mods.multiblockstages.IEMultiBlockStages;

var mobsone = [
"minecraft:witch",
"minecraft:zombie",
"minecraft:zombie_villager",
"minecraft:husk",
"minecraft:slime",
"minecraft:zombie_horse",
"minecraft:skeleton_horse",
"tconstruct:blueslime",
"pyrotech:pyrotech.mud",
"minecraft:magma_cube",
"minecraft:zombie_pigman",
"minecraft:wither_skeleton"
] as string[];

for mobone in mobsone {
    mods.MobStages.addStage("one", mobone);
}

var mobsthree = [
"minecraft:spider",
"minecraft:skeleton",
"minecraft:stray",
"mekanism:babyskeleton",
"minecraft:creeper",
"minecraft:enderman",
"minecraft:cave_spider",
"minecraft:ghast"
] as string[];

for mobthree in mobsthree {
    mods.MobStages.addStage("three", mobthree);
}

var mobsfive = [
"mutantbeasts:body_part",
"mutantbeasts:chemical_x",
"mutantbeasts:creeper_minion",
"mutantbeasts:creeper_minion_egg",
"mutantbeasts:endersoul_clone",
"mutantbeasts:endersoul_fragment",
"mutantbeasts:mutant_arrow",
"mutantbeasts:mutant_creeper",
"mutantbeasts:mutant_enderman",
"mutantbeasts:mutant_skeleton",
"mutantbeasts:mutant_snow_golem",
"mutantbeasts:mutant_zombie",
"mutantbeasts:skull_spirit",
"mutantbeasts:spider_pig",
"mutantbeasts:throwable_block"
] as string[];

for mobfive in mobsfive {
    mods.MobStages.addStage("five", mobfive);
}

IEMultiBlockStages.addStage("oreexacavator", "IE:Excavator");

if (journeymapstages == true) {
    mods.jmapstages.JMapStages.setWaypointStage("seven");
    mods.jmapstages.JMapStages.setDeathpointStage("eight");
    mods.jmapstages.JMapStages.setMinimapStage("six");
    mods.jmapstages.JMapStages.setFullscreenStage("nine");
}