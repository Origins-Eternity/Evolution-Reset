#
import moretweaker.galacticraft.Compressor;

Compressor.remove(<galacticraftcore:heavy_plating> * 2);

Compressor.addShaped(<galacticraftcore:heavy_plating>,
[[<galacticraftcore:basic_item:9>, <galacticraftcore:basic_item:8>, <galacticraftcore:basic_item:10>],
[<galacticraftcore:basic_item:9>, <galacticraftcore:basic_item:8>, <galacticraftcore:basic_item:10>],
[<tconstruct:large_plate>.withTag({Material: "tungsten_steel"}), <tconstruct:large_plate>.withTag({Material: "tungsten_steel"}), <tconstruct:large_plate>.withTag({Material: "tungsten_steel"})]]);