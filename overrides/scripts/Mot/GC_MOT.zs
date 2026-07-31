#
import moretweaker.galacticraft.Compressor;

Compressor.remove(<galacticraftcore:heavy_plating> * 2);

Compressor.addShapeless(<ercore:compressed_tungsten_steel> * 2, [<tconstruct:large_plate>.withTag({Material: "tungsten_steel"}), <tconstruct:large_plate>.withTag({Material: "tungsten_steel"})]);

Compressor.addShaped(<galacticraftcore:heavy_plating> * 3,
[[<galacticraftcore:basic_item:9>, <galacticraftcore:basic_item:8>, <galacticraftcore:basic_item:10>],
[<ercore:compressed_tungsten_steel>, <ercore:compressed_tungsten_steel>, <ercore:compressed_tungsten_steel>],
[<galacticraftcore:basic_item:9>, <galacticraftcore:basic_item:8>, <galacticraftcore:basic_item:10>]]);