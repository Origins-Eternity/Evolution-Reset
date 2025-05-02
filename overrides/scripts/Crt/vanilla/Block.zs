#
import crafttweaker.block.IBlockDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;

for oneblock in <ore:blockOne>.items {	
	oneblock.asBlock().definition.setHarvestLevel("pickaxe", 2);
}

for twoblock in <ore:blockTwo>.items {	
	twoblock.asBlock().definition.setHarvestLevel("pickaxe", 3);
}

for threeblock in <ore:blockThree>.items {	
	threeblock.asBlock().definition.setHarvestLevel("pickaxe", 4);
}

for fourblock in <ore:blockFour>.items {	
	fourblock.asBlock().definition.setHarvestLevel("pickaxe", 5);
}

for fiveblock in <ore:blockFive>.items {	
	fiveblock.asBlock().definition.setHarvestLevel("pickaxe", 6);
}