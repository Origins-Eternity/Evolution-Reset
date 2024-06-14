#
import crafttweaker.item.IItemStack;

var modrecipes = [
<quantumstorage:chest_iron>
] as IItemStack[];

for items in modrecipes{
    recipes.remove(items);
}

recipes.replaceAllOccurences(<ore:chest>, <quantumstorage:chest_iron>, <*>.only(function(item) {
    return !isNull(item) && !(item in loadedMods["quantumstorage"].items);
}));