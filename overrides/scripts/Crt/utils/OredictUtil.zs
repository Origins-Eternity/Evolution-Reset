#priority 99999


import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import crafttweaker.game.IGame;
import crafttweaker.oredict.IOreDictEntry;

function addOredictIngredient(oredict as IOreDictEntry, ingredient as IIngredient) {
    oredict.addItems(ingredient.items);
}

function removeOredictIngredient(oredict as IOreDictEntry, ingredient as IIngredient) {
    oredict.removeItems(ingredient.items);
}

function addOredictIngredients(oredict as IOreDictEntry, ingredients as IIngredient[]) {
    for ingredient in ingredients {
        oredict.addItems(ingredient.items);
    }
}

function removeOredictIngredients(oredict as IOreDictEntry, ingredients as IIngredient[]) {
    for ingredient in ingredients {
        oredict.removeItems(ingredient.items);
    }
}