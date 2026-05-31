#
import mods.botania.Apothecary;
import mods.botania.ElvenTrade;
import mods.botania.ManaInfusion;
import mods.botania.RuneAltar;


RuneAltar.removeRecipe(<botania:rune:1>);
ManaInfusion.removeRecipe(<minecraft:leather>);

Apothecary.addRecipe(<botania:specialflower>.withTag({type: "puredaisy"}), [<ore:ingotSteel>, <botania:petal>, <botania:petal>, <ore:ingotSteel>, <botania:petal>, <botania:petal>]);
Apothecary.addRecipe(<botania:specialflower>.withTag({type: "endoflame"}), [<ore:petalBrown>, <ore:petalBrown>, <ore:petalLightGray>, <ore:petalRed>]);
Apothecary.addRecipe(<botania:specialflower>.withTag({type: "gourmaryllis"}), [<ore:petalLightGray>, <ore:petalLightGray>, <ore:petalRed>, <ore:petalYellow>, <ore:petalYellow>, <botania:manatablet>.withTag({mana: 500000}), <botania:rune:5>, <botania:rune:1>]);
ElvenTrade.addRecipe([<botania:overgrowthseed>], [<botania:storage:4>]);
RuneAltar.addRecipe(<botania:rune:1>, [<botania:manaresource:23>, <botania:manaresource>, <pyrotech:material:54>, <pyrotech:pyroberries>, <pyrotech:material:5>], 10000);