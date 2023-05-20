#ignoreBracketErrors
import crafttweaker.item.IItemStack;

var miner = [
<environmentaltech:void_ore_miner_cont_2>,
<environmentaltech:void_ore_miner_cont_3>,
<environmentaltech:void_ore_miner_cont_4>,
<environmentaltech:void_ore_miner_cont_5>,
<environmentaltech:void_ore_miner_cont_6>,
] as IItemStack[];

for items in miner {	
	recipes.remove(items);
}

recipes.addShaped(<environmentaltech:void_ore_miner_cont_2>,
[[<environmentaltech:erodium>, <mekanism:machineblock:4>, <environmentaltech:erodium>],
[<environmentaltech:erodium>, <environmentaltech:void_ore_miner_cont_1>, <environmentaltech:erodium>],
[<chisel:diamond>, <environmentaltech:laser_lens>, <chisel:diamond:*>]]);

recipes.addShaped(<environmentaltech:void_ore_miner_cont_3>,
[[<environmentaltech:kyronite>, <mekanism:machineblock:4>, <environmentaltech:kyronite>],
[<environmentaltech:kyronite>, <environmentaltech:void_ore_miner_cont_2>, <environmentaltech:kyronite>],
[<chisel:diamond>, <environmentaltech:laser_lens>, <chisel:diamond:*>]]);

recipes.addShaped(<environmentaltech:void_ore_miner_cont_4>,
[[<environmentaltech:pladium>, <mekanism:machineblock:4>, <environmentaltech:pladium>],
[<environmentaltech:pladium>, <environmentaltech:void_ore_miner_cont_3>, <environmentaltech:pladium>],
[<chisel:diamond>, <environmentaltech:laser_lens>, <chisel:diamond:*>]]);

recipes.addShaped(<environmentaltech:void_ore_miner_cont_5>,
[[<environmentaltech:ionite>, <mekanism:machineblock:4>, <environmentaltech:ionite>],
[<environmentaltech:ionite>, <environmentaltech:void_ore_miner_cont_4>, <environmentaltech:ionite>],
[<chisel:diamond>, <environmentaltech:laser_lens>, <chisel:diamond:*>]]);

recipes.addShaped(<environmentaltech:void_ore_miner_cont_6>,
[[<environmentaltech:aethium>, <mekanism:machineblock:4>, <environmentaltech:aethium>],
[<environmentaltech:aethium>, <environmentaltech:void_ore_miner_cont_5>, <environmentaltech:aethium>],
[<chisel:diamond>, <environmentaltech:laser_lens>, <chisel:diamond:*>]]);