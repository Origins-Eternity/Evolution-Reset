#ignoreBracketErrors
import crafttweaker.block.IBlockDefinition;
import crafttweaker.item.IItemStack;

for oneblock in <ore:blockOne>.items {	
	oneblock.asBlock().definition.setHarvestLevel("pickaxe", 2);
}

for twoblock in <ore:blockTwo>.items {	
	twoblock.asBlock().definition.setHarvestLevel("pickaxe", 3);
}

for threeblock in <ore:blockThree>.items {	
	threeblock.asBlock().definition.setHarvestLevel("pickaxe", 1);
}

for fourblock in <ore:blockFour>.items {	
	fourblock.asBlock().definition.setHarvestLevel("pickaxe", 5);
}

for fiveblock in <ore:blockFive>.items {	
	fiveblock.asBlock().definition.setHarvestLevel("pickaxe", 7);
}

for sixblock in <ore:blockSix>.items {	
	sixblock.asBlock().definition.setHarvestLevel("pickaxe", 10);
}

for sevenblock in <ore:blockSeven>.items {	
	sevenblock.asBlock().definition.setHarvestLevel("pickaxe", 4);
}

for eightblock in <ore:blockEight>.items {	
	eightblock.asBlock().definition.setHarvestLevel("pickaxe", 6);
}

for nineblock in <ore:blockNine>.items {	
	nineblock.asBlock().definition.setHarvestLevel("pickaxe", 8);
}

for tenblock in <ore:blockTen>.items {	
	tenblock.asBlock().definition.setHarvestLevel("pickaxe", 9);
}