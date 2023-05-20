#ignoreBracketErrors

val traverse_recipes = [
"traverse:fir_boat",
"traverse:fir_planks"
] as string[];

for r in traverse_recipes {
    recipes.removeByRecipeName(r);
}