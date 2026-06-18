#
import crafttweaker.item.IItemStack;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Excavator;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Refinery;

var blastnuggets = [
<minecraft:iron_nugget>,
<minecraft:gold_nugget>,
<immersiveengineering:metal:20>,
<ercore:tin_nugget>,
<immersiveengineering:metal:21>,
<tconstruct:nuggets:1>,
<tconstruct:nuggets>,
<immersiveengineering:metal:22>,
<immersiveengineering:metal:24>,
<immersiveengineering:metal:23>,
<immersiveengineering:metal:25>,
<ercore:tungsten_nugget>
] as IItemStack[];

var blastslags = [
<pyrotech:generated_pile_slag_iron>,
<pyrotech:generated_pile_slag_gold>,
<pyrotech:generated_pile_slag_copper>,
<pyrotech:generated_pile_slag_tin>,
<pyrotech:generated_pile_slag_aluminum>,
<pyrotech:generated_pile_slag_ardite>,
<pyrotech:generated_pile_slag_cobalt>,
<pyrotech:generated_pile_slag_lead>,
<pyrotech:generated_pile_slag_nickel>,
<pyrotech:generated_pile_slag_silver>,
<pyrotech:generated_pile_slag_uranium>,
<pyrotech:generated_pile_slag_tungsten>
] as IItemStack[];

for k, blastnugget in blastnuggets {
	var blastslag = blastslags[k];
	BlastFurnace.addRecipe(blastnugget * 18, blastslag, 1600);
}

var slags as IItemStack[] = [
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
];

var ingots as IItemStack[] = [
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
];

for i, slag in slags {
	var ingot = ingots[i];
	ArcFurnace.addRecipe(ingot * 3, slag, null, 160, 1024);
}

Refinery.removeRecipe(<liquid:biodiesel>);
Refinery.addRecipe(<liquid:biodiesel> * 20, <liquid:plantoil> * 16, <liquid:ethanol> * 8, 100);
AlloySmelter.addRecipe(<pyrotech:material:16> * 10, <minecraft:gunpowder>, <minecraft:stonebrick> * 2, 1600);
AlloySmelter.addRecipe(<pyrotech:material:5> * 5, <pyrotech:material:4>, <pyrotech:material:4>, 1600);
ArcFurnace.addRecipe(<ercore:tungsten_carbide_ingot>, <ore:ingotTungsten>, <immersiveengineering:material:7>, 160, 1024, [<ore:dustCoke>], "Alloying");
MetalPress.addRecipe(<minecraft:light_weighted_pressure_plate>, <minecraft:gold_block>, <immersiveengineering:mold>, 1000);
MetalPress.addRecipe(<minecraft:heavy_weighted_pressure_plate>, <ore:blockSteel>, <immersiveengineering:mold>, 2000);
Excavator.addMineral("Wolframite", 5, 0.15, ["oreTungsten", "oreIron", "oreTin"], [0.54, 0.23, 0.23], [0]);