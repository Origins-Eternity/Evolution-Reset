#
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;

var modrecipes = [
<immersiveengineering:metal_decoration0:3>,
<immersiveengineering:metal_decoration0:4>,
<immersiveengineering:metal_decoration0:6>,
<immersiveengineering:stone_decoration:8>,
<immersiveengineering:wooden_device0>,
<immersiveengineering:wooden_device0:2>,
<immersiveengineering:metal_device1:13>,
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

recipes.addShaped(<immersiveengineering:metal_decoration0:6> * 2,
[[<ore:ingotTungsten>, <ore:ingotSteel>, <ore:ingotTungsten>],
[<ore:ingotElectrum>, <immersiveengineering:metal_device1:2>, <ore:ingotElectrum>],
[<ore:ingotTungsten>, <ore:ingotSteel>, <ore:ingotTungsten>]]);

recipes.addShaped(<immersiveengineering:metal_decoration0:3> * 3,
[[<ore:blockSheetmetalSteel>, <immersiveengineering:connector:13>, <ore:blockSheetmetalSteel>],
[<immersiveengineering:connector:13>, <ore:blockCopper>, <immersiveengineering:connector:13>],
[<ore:blockSheetmetalSteel>, <immersiveengineering:connector:13>, <ore:blockSheetmetalSteel>]]);

recipes.addShaped(<immersiveengineering:metal_decoration0:4> * 5,
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

recipes.addShaped(<immersiveengineering:wooden_device0:2>,
[[null, null, null],
[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
[<pyrotech:crafting_table_template>, null, <ore:fenceTreatedWood>]]);

recipes.addShaped(<immersiveengineering:metal_device1:13>,
[[<ore:blockGlass>, <ore:electronTube>, <ore:blockGlass>],
[<ore:blockGlass>, <ore:runeSpringB>, <ore:blockGlass>],
[<ore:plankTreatedWood>, <immersiveengineering:material:8>, <ore:plankTreatedWood>]]);

recipes.replaceAllOccurences(<minecraft:iron_ingot>, <ore:ingotSteel>, <immersiveengineering:metal_device0:1>);
recipes.replaceAllOccurences(<ore:ingotSteel>, <ore:ingotTungsten>, <immersiveengineering:metal_device0:2>);