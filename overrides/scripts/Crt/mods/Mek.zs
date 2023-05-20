#ignoreBracketErrors
#priority 0
import crafttweaker.item.IItemStack;

val blocks as IItemStack[] = [
<mekanism:machineblock:8>,
<mekanism:machineblock:0>,
<mekanism:machineblock2:3>,
<mekanism:machineblock:4>
];

for i in blocks {
    recipes.remove(<mekanism:machineblock:8>);
}

recipes.addShaped(<mekanism:machineblock:8>,
[[<immersiveengineering:storage:8>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:storage:8>],
[<immersiveengineering:metal_decoration0:3>, <mekanism:ingot:1>, <immersiveengineering:metal_decoration0:3>],
[<immersiveengineering:storage:8>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:storage:8>]]);

recipes.remove(<mekanism:machineblock:0>);
recipes.addShaped(<mekanism:machineblock:0>,
[[<immersiveengineering:graphite_electrode>, <mekanism:controlcircuit:0>, <immersiveengineering:graphite_electrode>],
[<immersiveengineering:sheetmetal:5>, <mekanism:basicblock:8>, <immersiveengineering:sheetmetal:5>],
[<immersiveengineering:graphite_electrode>, <immersiveengineering:material:27>, <immersiveengineering:graphite_electrode>]]);

recipes.addShaped(<mekanism:machineblock2:3>,
[[<mekanism:reinforcedalloy>, <mekanism:controlcircuit>, <mekanism:reinforcedalloy>],
[<immersiveengineering:metal_device1:10>, <mekanism:machineblock:9>, <immersiveengineering:metal_device1:10>],
[<mekanism:reinforcedalloy>, <mekanism:controlcircuit>, <mekanism:reinforcedalloy>]]);

recipes.addShaped(<mekanism:machineblock:4>,
[[<mekanism:atomicalloy>, <mekanism:controlcircuit:3>, <mekanism:atomicalloy>],
[<mekanism:machineblock:15>, <mekanism:robit>, <mekanism:machineblock:15>],
[<mekanism:teleportationcore>, <mekanism:basicblock:8>, <mekanism:teleportationcore>]]);

val ingots as IItemStack[] = [
<mekanism:ingot:4>,
<mekanism:ingot:3>,
<mekanism:ingot:2>,
<mekanism:ingot:1>,
<mekanism:ingot:0>
];

val nuggets as IItemStack[] = [
<mekanism:nugget:4>,
<mekanism:nugget:3>,
<mekanism:nugget:2>,
<mekanism:nugget:1>,
<mekanism:nugget:0>
];

for i, ingot in ingots {
    recipes.addShaped(ingot, [
        [nuggets[i], nuggets[i], nuggets[i]],
        [nuggets[i], nuggets[i], nuggets[i]],
        [nuggets[i], nuggets[i], nuggets[i]]
    ]);
}