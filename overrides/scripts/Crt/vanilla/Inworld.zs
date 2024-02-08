#
import crafttweaker.item.IItemStack;

mods.inworldcrafting.FluidToItem.transform(<minecraft:potion>.withTag({Potion: "minecraft:water"}), <liquid:water>, [<minecraft:glass_bottle>], true);
mods.inworldcrafting.FluidToItem.transform(<tconstruct:soil>, <liquid:slaked_lime>, [<minecraft:clay_ball>, <pyrotech:material:3>], true);

var seeds as IItemStack[] = [
	<pyrotech:material:2>
];
var dirts as IItemStack[] = [
	<minecraft:grass_path>
];
for i, seed in seeds {
	var dirt = dirts[i];
	mods.inworldcrafting.FluidToItem.transform(dirt, <liquid:dirt>, [seed], true);
}