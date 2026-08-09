#
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.Excavator;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Refinery;

var slags = [
<pyrotech:generated_pile_slag_aluminum>,
<pyrotech:generated_pile_slag_ardite>,
<pyrotech:generated_pile_slag_cobalt>,
<pyrotech:generated_pile_slag_copper>,
<pyrotech:generated_pile_slag_gold>,
<pyrotech:generated_pile_slag_iron>,
<pyrotech:generated_pile_slag_lead>,
<pyrotech:generated_pile_slag_nickel>,
<pyrotech:generated_pile_slag_silver>,
<pyrotech:generated_pile_slag_tin>,
<pyrotech:generated_pile_slag_uranium>,
<pyrotech:generated_pile_slag_tungsten>
] as IItemStack[];

var ores = [
<ore:oreAluminum>,
<ore:oreArdite>,
<ore:oreCobalt>,
<ore:oreCopper>,
<ore:oreGold>,
<ore:oreIron>,
<ore:oreLead>,
<ore:oreNickel>,
<ore:oreSilver>,
<ore:oreTin>,
<ore:oreUranium>,
<ore:oreTungsten>
] as IOreDictEntry[];

var dusts = [
<immersiveengineering:metal:10>,
<ercore:ardite_dust>,
<ercore:cobalt_dust>,
<immersiveengineering:metal:9>,
<immersiveengineering:metal:19>,
<immersiveengineering:metal:18>,
<immersiveengineering:metal:11>,
<immersiveengineering:metal:13>,
<immersiveengineering:metal:12>,
<ercore:tin_dust>,
<immersiveengineering:metal:14>,
<ercore:tungsten_dust>
] as IItemStack[];

var ingots = [
<immersiveengineering:metal:1>,
<tconstruct:ingots:1>,
<tconstruct:ingots>,
<immersiveengineering:metal>,
<minecraft:gold_ingot>,
<minecraft:iron_ingot>,
<immersiveengineering:metal:2>,
<immersiveengineering:metal:4>,
<immersiveengineering:metal:3>,
<galacticraftcore:basic_item:4>,
<immersiveengineering:metal:5>,
<ercore:tungsten_ingot>
] as IItemStack[];

for i, slag in slags {
	var dust = dusts[i];
	var ore = ores[i];

	ore.add(slag);
	for item in ore.items {
		Crusher.removeRecipesForInput(item);
	}
	Crusher.addRecipe(dust * 3, ore, 2048);
	BlastFurnace.addRecipe(dust * 2, ore, 1600);
}

Refinery.removeRecipe(<liquid:biodiesel>);
Refinery.addRecipe(<liquid:biodiesel> * 20, <liquid:plantoil> * 16, <liquid:ethanol> * 8, 100);

AlloySmelter.addRecipe(<pyrotech:material:16> * 10, <minecraft:gunpowder>, <minecraft:stonebrick> * 2, 1600);
AlloySmelter.addRecipe(<pyrotech:material:5> * 5, <pyrotech:material:4>, <pyrotech:material:4>, 1600);

ArcFurnace.addRecipe(<ercore:tungsten_carbide_dust>, <ore:dustTungsten>, null, 300, 1200, [<ore:dustCoke>], "Alloying");
ArcFurnace.addRecipe(<ercore:tungsten_steel_dust> * 4, <ore:dustTungstencarbide> * 3, null, 600, 1400, [<ore:dustCobalt>], "Alloying");

MetalPress.addRecipe(<minecraft:light_weighted_pressure_plate>, <minecraft:gold_block>, <immersiveengineering:mold>, 1000);
MetalPress.addRecipe(<minecraft:heavy_weighted_pressure_plate>, <ore:blockSteel>, <immersiveengineering:mold>, 2000);

Excavator.addMineral("Wolframite", 14, 0.06, ["oreTungsten", "oreIron", "oreTin"], [0.54, 0.23, 0.23], [0]);