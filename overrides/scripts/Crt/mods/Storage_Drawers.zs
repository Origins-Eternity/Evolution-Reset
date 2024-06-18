#
import crafttweaker.item.IItemStack;

for item in loadedMods["storagedrawers"].items {
recipes.replaceAllOccurences(<ore:stickWood>, <pyrotech:material:23>, item);
recipes.replaceAllOccurences(<ore:chestWood>, <pyrotech:crate_stone>, item);
}