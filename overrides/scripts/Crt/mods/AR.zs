#ignoreBracketErrors
import crafttweaker.item.IItemStack;

var rocketry = [
<advancedrocketry:drill>,
<advancedrocketry:nuclearrocketmotor>,
<advancedrocketry:thermitetorch>,
<advancedrocketry:spacehelmet>,
<libvulpes:metal0:4>
] as IItemStack[];
for items in rocketry {
    recipes.remove(items);
}

recipes.addShapeless(<advancedrocketry:spacehelmet>, [<conarm:helmet>.withTag({Material: "steel"}), <ore:wool>, <pyrotech:material:41>, <tconstruct:fancy_frame:6>]);
recipes.addShapeless(<advancedrocketry:drill>, [<libvulpes:structuremachine>, <tconstruct:pick_head>.withTag({Material: "tungsten_steel"}), <pyrotech:tongs_diamond>]);
recipes.replaceAllOccurences(<advancedrocketry:concrete>, <pyrotech:tongs_diamond>, <advancedrocketry:rocketbuilder>);
recipes.replaceAllOccurences(<libvulpes:structuremachine>, <mekanism:machineblock2:4>, <advancedrocketry:electrolyser>);
recipes.replaceAllOccurences(<libvulpes:structuremachine>, <mekanism:machineblock3:1>, <advancedrocketry:chemicalreactor>);
recipes.replaceAllOccurences(<ore:plateGold>, <mekanism:compressedobsidian>, <advancedrocketry:chemicalreactor>);
recipes.replaceAllOccurences(<ore:slabWood>, <mekanism:crystal:1>, <advancedrocketry:ic:4>);
recipes.replaceAllOccurences(<minecraft:stone_button>, <tconstruct:pan_head>.withTag({Material: "osmiridium"}), <advancedrocketry:planetholoselector>);
recipes.replaceAllOccurences(<ore:plateSteel>, <ercore:heavy_plating>, <ore:rocketparts>);

recipes.addShaped(<advancedrocketry:nuclearrocketmotor>,
[[<tconstruct:large_plate>.withTag({Material: "nihilite"}), <advancedrocketry:productingot>, <tconstruct:large_plate>.withTag({Material: "nihilite"})],
[<tconstruct:large_plate>.withTag({Material: "adamant"}), <libvulpes:productgem>, <tconstruct:large_plate>.withTag({Material: "adamant"})],
[<advancedrocketry:productplate>, <advancedrocketry:productingot>, <advancedrocketry:productplate>]]);

recipes.addShaped(<ercore:heavy_plating>,
[[<tconstruct:large_plate>.withTag({Material: "ignitz"}), <tconstruct:large_plate>.withTag({Material: "ignitz"}), <tconstruct:large_plate>.withTag({Material: "ignitz"})],
[<ore:plateSteel>, <ore:sheetSteel>, <ore:plateSteel>],
[<tconstruct:large_plate>.withTag({Material: "dyonite"}), <tconstruct:large_plate>.withTag({Material: "dyonite"}), <tconstruct:large_plate>.withTag({Material: "dyonite"})]]);

recipes.addShaped(<advancedrocketry:oxygenvent>,
[[<tconstruct:large_plate>.withTag({Material: "seismum"}), <ore:fanSteel>, <tconstruct:large_plate>.withTag({Material: "constantan"})],
[<tconstruct:large_plate>.withTag({Material: "erodium"}), <libvulpes:motor>, <tconstruct:large_plate>.withTag({Material: "solarium"})],
[<tconstruct:large_plate>.withTag({Material: "knightmetal"}), <advancedrocketry:fueltank>, <tconstruct:large_plate>.withTag({Material: "lumix"})]]);