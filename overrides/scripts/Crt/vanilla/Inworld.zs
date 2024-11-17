#
import crafttweaker.item.IItemStack;

mods.inworldcrafting.FluidToItem.transform(<tconstruct:soil>, <liquid:slaked_lime>, [<minecraft:clay_ball>, <pyrotech:material:3>], true);

var seeds as IItemStack[] = [
	<botania:grassseeds>,
	<botania:grassseeds:1>,
	<botania:grassseeds:2>,
	<botania:grassseeds:3>,
	<botania:grassseeds:4>,
	<botania:grassseeds:5>,
	<botania:grassseeds:6>,
	<botania:grassseeds:7>,
	<botania:grassseeds:8>,
	<pyrotech:material:2>
];
var dirts as IItemStack[] = [
	<minecraft:grass>,
	<minecraft:dirt:2>,
	<minecraft:mycelium>,
	<botania:altgrass>,
	<botania:altgrass:1>,
	<botania:altgrass:2>,
	<botania:altgrass:3>,
	<botania:altgrass:4>,
	<botania:altgrass:5>,
	<minecraft:grass_path>
];

for i, seed in seeds {
	var dirt = dirts[i];
	mods.inworldcrafting.FluidToItem.transform(dirt, <liquid:dirt>, [seed], true);
}