#ignoreBracketErrors

mods.botania.ManaInfusion.addInfusion(<ercore:obsidian_magic>, <minecraft:obsidian>, 5000);

recipes.remove(<scalinghealth:heartcontainer>);
mods.botania.RuneAltar.removeRecipe(<botania:rune:1>);
mods.botania.Apothecary.addRecipe(<botania:specialflower>.withTag({type: "puredaisy"}), [<twilightforest:steeleaf_ingot>, <botania:petal>, <botania:petal>, <twilightforest:steeleaf_ingot>, <botania:petal>, <botania:petal>]);
mods.botania.Apothecary.addRecipe(<botania:specialflower>.withTag({type: "endoflame"}), [<ore:petalBrown>, <ore:petalBrown>, <ore:petalLightGray>, <ore:petalRed>, <scalinghealth:crystalshard>]);
mods.botania.Apothecary.addRecipe(<botania:specialflower>.withTag({type: "gourmaryllis"}), [<ore:petalLightGray>, <ore:petalLightGray>, <ore:petalRed>, <ore:petalYellow>, <ore:petalYellow>, <botania:manatablet>.withTag({mana: 500000}), <botania:rune:5>, <botania:rune:1>]);
mods.botania.ElvenTrade.addRecipe([<botania:overgrowthseed>], [<tconstruct:pan_head>.withTag({Material: "proxii"})]);
mods.botania.RuneAltar.addRecipe(<botania:rune:1>, [<botania:manaresource:23>, <botania:manaresource>, <twilightforest:fiery_ingot>, <taiga:tiberium_crystal>, <minecraft:nether_wart>], 10000);
mods.botania.RuneAltar.addRecipe(<scalinghealth:difficultychanger>, [<scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>], 50000);
mods.botania.RuneAltar.addRecipe(<scalinghealth:heartcontainer>, [<scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>], 20000);