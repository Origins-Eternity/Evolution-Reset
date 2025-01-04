#
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Excavator;
import mods.immersiveengineering.MineralMix;

var modrecipes = [
<immersiveengineering:metal_decoration0:5>,
<immersiveengineering:metal_decoration0:3>,
<immersiveengineering:metal_decoration0:4>,
<immersiveengineering:stone_decoration:8>,
<immersiveengineering:wooden_device0>,
<immersiveengineering:material:8>,
<immersiveengineering:metal:36>,
<immersiveengineering:metal:37>,
<immersiveengineering:metal:39>,
<immersiveengineering:metal:40>,
<immersiveengineering:metal:30>,
<immersiveengineering:metal:32>,
<immersiveengineering:metal:31>,
<immersiveengineering:metal:38>,
<immersiveengineering:metal:35>,
<immersiveengineering:metal:33>,
<immersiveengineering:metal:34>,
<immersiveengineering:stone_decoration:1>,
<immersiveengineering:stone_decoration>,
<immersiveengineering:stone_decoration:10>,
<immersiveengineering:tool>,
<immersiveengineering:storage>,
<immersiveengineering:treated_wood>
] as IItemStack[];

for items in modrecipes {
	recipes.remove(items);
}

recipes.addShaped(<immersiveengineering:metal_decoration0:5>,
[[<ore:blockSheetmetalSteel>, <immersiveengineering:material:9>, <ore:blockSheetmetalSteel>],
[<immersiveengineering:material:9>, <immersiveengineering:metal:7>, <immersiveengineering:material:9>],
[<ore:blockSheetmetalSteel>, <immersiveengineering:material:9>, <ore:blockSheetmetalSteel>]]);

recipes.addShaped(<immersiveengineering:metal_decoration0:3> * 4,
[[<ore:blockSteel>, <immersiveengineering:connector:13>, <ore:blockSteel>],
[<immersiveengineering:connector:13>, <ore:blockCopper>, <immersiveengineering:connector:13>],
[<ore:blockSteel>, <immersiveengineering:connector:13>, <ore:blockSteel>]]);

recipes.addShaped(<immersiveengineering:metal_decoration0:4> * 2,
[[<ore:blockSteel>, <immersiveengineering:material:8>, <ore:blockSteel>],
[<ore:blockCopper>, <ore:blockCopper>, <ore:blockCopper>],
[<ore:blockSteel>, <immersiveengineering:material:8>, <ore:blockSteel>]]);

recipes.addShaped(<immersiveengineering:stone_decoration:8>,
[[null, <ore:blockGlass>, null],
[<ore:plateIron>, <ore:dyeGreen>, <ore:plateIron>],
[null, <ore:blockGlass>, null]]);

recipes.addShaped("ie_hammer", <immersiveengineering:tool>,
[[null, <pyrotech:material:16>, <pyrotech:material:26>],
[null, <ore:stickTreatedWood>, <pyrotech:material:16>],
[<ore:stickTreatedWood>, null, null]]);

recipes.addShaped(<immersiveengineering:wooden_device0>,
[[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
[<ore:plankTreatedWood>, <pyrotech:crate_stone>, <ore:plankTreatedWood>],
[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>]]);

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
	mods.immersiveengineering.BlastFurnace.addRecipe(blastnugget * 18, blastslag, 1600);
}

mods.immersiveengineering.MetalPress.addRecipe(<minecraft:light_weighted_pressure_plate>, <minecraft:gold_block>, <immersiveengineering:mold>, 1000);
mods.immersiveengineering.MetalPress.addRecipe(<minecraft:heavy_weighted_pressure_plate>, <ore:blockSteel>, <immersiveengineering:mold>, 2000);
mods.immersiveengineering.AlloySmelter.addRecipe(<pyrotech:material:16> * 10, <minecraft:gunpowder>, <minecraft:stonebrick> * 2, 1600);
mods.immersiveengineering.AlloySmelter.addRecipe(<pyrotech:material:5> * 5, <pyrotech:material:4>, <pyrotech:material:4>, 1600);
mods.immersiveengineering.ArcFurnace.addRecipe(<ercore:tungsten_carbide_ingot>, <ore:ingotTungsten>, <pyrotech:generated_pile_slag_tungsten>, 160, 1024, [<ore:dustCoke>], "Alloying");

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
	mods.immersiveengineering.ArcFurnace.addRecipe(ingot * 3, slag, null, 160, 1024);
}