#

val mod = loadedMods["comforts"];
for item in mod.items {
    recipes.replaceAllOccurences(<ore:string>, <pyrotech:material:44>, item);
}

recipes.replaceAllOccurences(<ore:stickWood>, <pyrotech:material:23>, <comforts:hammock:*>);
recipes.replaceAllOccurences(<ore:ingotIron>, <ore:ingotSteel>, <comforts:rope>);