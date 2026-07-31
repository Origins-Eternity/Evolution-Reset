#
import mods.botania.Apothecary;
import mods.botania.Brew;
import mods.botania.ElvenTrade;
import mods.botania.ManaInfusion;
import mods.botania.RuneAltar;

RuneAltar.removeRecipe(<botania:rune:1>);
ManaInfusion.removeRecipe(<minecraft:leather>);

Apothecary.addRecipe(<botania:specialflower>.withTag({type: "puredaisy"}), [<ore:ingotSteel>, <botania:petal>, <botania:petal>, <ore:ingotSteel>, <botania:petal>, <botania:petal>]);
Apothecary.addRecipe(<botania:specialflower>.withTag({type: "endoflame"}), [<ore:petalBrown>, <ore:petalBrown>, <pyrotech:furnace_core>, <ore:petalLightGray>, <ore:petalRed>]);
ElvenTrade.addRecipe([<botania:overgrowthseed>], [<botania:manaresource:4>]);
ElvenTrade.addRecipe([<galaxyspace:rocket_modules:6>], [<botania:dice>]);
RuneAltar.addRecipe(<botania:rune:1>, [<botania:manaresource:23>, <botania:manaresource>, <pyrotech:furnace_core>, <pyrotech:pyroberries>, <minecraft:gunpowder>], 5000);