#ignoreBracketErrors
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI;

recipes.remove(<firstaid:plaster>);

var banlist = [
<scalinghealth:heartcontainer>,
<firstaid:bandage>,
<scalinghealth:healingitem>
] as IItemStack[];

for items in banlist{
    removeAndHide(items);
}