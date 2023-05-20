#ignoreBracketErrors
#priority 99999
import crafttweaker.item.IItemDefinition;

recipes.addShapeless(<minecraft:bow>.withTag({ench: [{lvl: 1 as short, id: 51 as short}], RepairCost: 1}), [<minecraft:bow>, <scalinghealth:crystalshard>, <minecraft:book>]);
<minecraft:bow>.withTag({ench: [{lvl: 1 as short, id: 51 as short}], RepairCost: 1}).maxDamage = 385;

recipes.addShapeless(<minecraft:wooden_sword>.withTag({ench: [{lvl: 5 as short, id: 16 as short}]}), [<minecraft:wooden_sword>, <scalinghealth:crystalshard>]);
<minecraft:wooden_sword>.withTag({ench: [{lvl: 5 as short, id: 16 as short}]}).maxDamage = -1;
<minecraft:wooden_sword>.withTag({ench: [{lvl: 5 as short, id: 16 as short}]}).addTooltip(game.localize("crafttweaker.wooden_sword.tooltip"));