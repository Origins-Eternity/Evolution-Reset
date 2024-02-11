#
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.Copy;
import crafttweaker.oredict.IOreDictEntry;

RecipeBuilder.get("basic")
.setShaped([
    [<pyrotech:material:16>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:material:16>],
    [<ore:blockIron>, <ore:ingotIron>, <pyrotech:stash_stone>, <ore:ingotIron>, <ore:blockIron>],
    [<pyrotech:material:16>, <ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>, <pyrotech:material:16>],
    [<ercore:basalt>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ercore:basalt>],
    [<ercore:basalt>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ercore:basalt>]])
.setName("blacksmith_workstation")
.setLevelRequired(5)
.setConsumeExperience(false)
.addTool(<ercore:blacksmith_workstation_blueprint>, 2)
.addTool(<ore:artisansTSquare>, 20)
.addTool(<ore:artisansCarver>, 20)
.setExtraOutputOne(<minecraft:iron_nugget> * 2, 0.7)
.setExtraOutputTwo(<pyrotech:material:16> * 3, 0.2)
.setExtraOutputThree(<pyrotech:rock:7> * 5, 0.1)
.setMaximumTier(2)
.addOutput(<artisanworktables:workstation:3>)
.create();
  
RecipeBuilder.get("basic")
.setCopy(
        Copy.byOutput([<artisanworktables:workshop:5>]).runAfter())
.setName("basic_workshop")
.setLevelRequired(10)
.addTool(<ercore:basic_workshop_blueprint>, 2)
.addTool(<ore:artisansCarver>, 10)
.setExtraOutputOne(<pyrotech:material:23> * 2, 0.9)
.setExtraOutputTwo(<pyrotech:material:23> * 3, 0.1)
.addOutput(<artisanworktables:workshop:5>)
.create();
  
RecipeBuilder.get("blacksmith")
.setShaped([
    [<ore:ingotSteel>, null, <ore:ingotSteel>],
    [<ore:ingotSteel>, null, <ore:ingotSteel>],
    [null, <ore:plateSteel>, null]])
.setName("bucket")
.setLevelRequired(10)
.setConsumeExperience(false)
.addTool(<ercore:bucket_blueprint>, 2)
.addTool(<ore:artisansCutters>, 20)
.setExtraOutputOne(<minecraft:iron_nugget> * 2, 0.9)
.setExtraOutputTwo(<minecraft:iron_nugget> * 3, 0.1)
.addOutput(<minecraft:bucket>)
.create();
  
RecipeBuilder.get("basic")
.setCopy(
        Copy.byOutput([<artisanworktables:workshop:3>]).runAfter())
.setName("blacksmith_workshop")
.setLevelRequired(15)
.setExtraOutputOne(<minecraft:iron_nugget> * 2, 0.8)
.setExtraOutputTwo(<pyrotech:rock:7> * 3, 0.2)	
.addTool(<ercore:blacksmith_workshop_blueprint>, 2)
.addTool(<ore:artisansCarver>, 30) 
.setFluid(<liquid:lava> * 1000)
.addOutput(<artisanworktables:workshop:3>)
.create();
  
RecipeBuilder.get("basic")
.setShaped([
    [<ore:blockSteel>, <ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>, <ore:blockSteel>],
    [<ore:blockSteel>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <ore:blockSteel>],
    [<ore:blockSteel>, <ore:blockCopper>, <ore:blockCopper>, <ore:blockCopper>, <ore:blockSteel>],
    [<ercore:basalt>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ercore:basalt>],
    [<ercore:basalt>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ercore:basalt>]])
.setName("engineer_workstation")
.setLevelRequired(10)
.setConsumeExperience(false)
.setFluid(<liquid:lava> * 4000)
.setMaximumTier(2)
.setExtraOutputOne(<minecraft:iron_nugget> * 5, 0.6)
.setExtraOutputTwo(<pyrotech:rock:7> * 8, 0.2)	
.setExtraOutputThree(<immersiveengineering:metal:20> * 3, 0.2)	
.addTool(<ore:artisansTSquare>, 50)  
.addTool(<ercore:engineer_workstation_blueprint>, 2)
.addTool(<ore:artisansCarver>, 50)
.addOutput(<artisanworktables:workstation:6>)
.create();
  
RecipeBuilder.get("engineer")
.setShaped([
    [<pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>],
    [<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>],
    [<ore:blockSteel>, <ercore:basalt>, <ercore:basalt>, <ercore:basalt>, <ore:blockSteel>],
    [<ore:blockIron>, <ore:blockIron>, <ore:blockIron>, <ore:blockIron>, <ore:blockIron>],
    [<ore:blockIron>, <ercore:basalt>, <ercore:basalt>, <ercore:basalt>, <ore:blockIron>]])
.setName("furnace")
.setLevelRequired(30)
.setSecondaryIngredients([<immersiveengineering:metal:38> * 9, <minecraft:fire_charge> * 2])
.addTool(<ercore:furnace_core_blueprint>, 2)
.setFluid(<liquid:lava> * 5000)
.addTool(<ore:artisansCarver>, 30)  
.addTool(<ore:artisansTSquare>, 50)   
.setMaximumTier(2)
.setExtraOutputOne(<minecraft:iron_nugget> * 4, 0.4)
.setExtraOutputTwo(<pyrotech:material:16> * 6, 0.4)	
.setExtraOutputThree(<immersiveengineering:metal:28> * 2, 0.2)
.addOutput(<pyrotech:furnace_core>)
.create(); 
  
RecipeBuilder.get("engineer")
.setCopy(
        Copy.byOutput([<artisanworktables:workshop:6>]).runAfter())
.setName("engineer_workshop")
.setLevelRequired(20)
.setFluid(<liquid:lava> * 2000)	
.addTool(<ore:artisansDriver>, 20)
.addTool(<ercore:engineer_workshop_blueprint>, 2)
.setExtraOutputOne(<immersiveengineering:metal:20> * 3, 0.8)	
.setExtraOutputTwo(<immersiveengineering:metal:28> * 7, 0.2)	
.addOutput(<artisanworktables:workshop:6>)
.create();

RecipeBuilder.get("engineer")
.setShaped([
    [<minecraft:nether_brick>, <ore:blockSteel>, <minecraft:skull:1>, <ore:blockSteel>, <minecraft:nether_brick>],
    [<ore:blockSteel>, <minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>, <ore:blockSteel>],
    [<minecraft:skull:1>, <minecraft:nether_brick>, <pyrotech:bloomery>, <minecraft:nether_brick>, <minecraft:skull:1>],
    [<ore:blockSteel>, <minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>, <ore:blockSteel>],
    [<minecraft:nether_brick>, <ore:blockSteel>, <minecraft:skull:1>, <ore:blockSteel>, <minecraft:nether_brick>]])
.setName("wither_forge")
.setLevelRequired(30)
.setSecondaryIngredients([<minecraft:fire_charge> * 4])
.setFluid(<liquid:lava> * 4000)	
.addTool(<ercore:wither_forge_blueprint>, 2)
.addTool(<ore:artisansSpanner>, 50)
.addTool(<ore:artisansChisel>, 50)
.setMaximumTier(2)
.setExtraOutputOne(<minecraft:bone> * 3, 0.3)	 
.setExtraOutputTwo(<minecraft:netherbrick> * 5, 0.4)	
.setExtraOutputThree(<immersiveengineering:metal:28> * 7, 0.3)	
.addOutput(<pyrotech:wither_forge>)
.create(); 
  
RecipeBuilder.get("basic")
.setCopy(
        Copy.byOutput([<artisanworktables:workshop:14>]).runAfter())
.setName("potter_workshop")
.setLevelRequired(10)
.setExtraOutputOne(<minecraft:brick> * 2, 0.5)	 
.setExtraOutputTwo(<pyrotech:material:23> * 3, 0.5)	
.addTool(<ore:artisansTrowel>, 15)
.addTool(<ercore:potter_workshop_blueprint>, 2)
.addOutput(<artisanworktables:workshop:14>)
.create();

RecipeBuilder.get("basic")
.setShaped([
    [<pyrotech:masonry_brick_block>, <minecraft:brick_block>, <pyrotech:material:42>, <minecraft:brick_block>, <pyrotech:masonry_brick_block>],
    [<pyrotech:masonry_brick_block>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <pyrotech:masonry_brick_block>],
    [<pyrotech:masonry_brick_block>, <minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>, <pyrotech:masonry_brick_block>],
    [<ercore:basalt>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ercore:basalt>],
    [<ercore:basalt>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ercore:basalt>]])
.setName("potter_workstation")
.setLevelRequired(10)
.setConsumeExperience(false)
.setFluid(<liquid:lava> * 4000)
.setMaximumTier(2)
.setExtraOutputOne(<minecraft:iron_nugget> * 5, 0.6)
.setExtraOutputTwo(<pyrotech:rock:7> * 8, 0.2)	
.setExtraOutputThree(<immersiveengineering:metal:20> * 3, 0.2)	
.addTool(<ore:artisansTSquare>, 50)  
.addTool(<ercore:engineer_workstation_blueprint>, 2)
.addTool(<ore:artisansCarver>, 50)
.addOutput(<artisanworktables:workstation:14>)
.create();
  
RecipeBuilder.get("potter")
.setShaped([
    [null, null, null, <ercore:cement_powder>, null],
    [null, <ercore:cement_powder>, <ercore:cement_powder>, <ercore:cement_powder>, null],
    [null, <ercore:cement_powder>, <ercore:cement_powder>, <ercore:cement_powder>, null],
    [null, <ercore:cement_powder>, <ercore:cement_powder>, <ercore:cement_powder>, null],
    [null, <ercore:cement_powder>, null, null, null]])
.setFluid(<liquid:water> * 500)
.setLevelRequired(10)
.setConsumeExperience(false)
.addTool(<ore:artisansDriver>, 40)
.addTool(<ore:artisansSpanner>, 40)
.addTool(<ore:artisansChisel>, 40)
.setMaximumTier(2)
.setExtraOutputOne(<minecraft:clay_ball> * 5, 0.3)	 
.setExtraOutputTwo(<ercore:cement_powder> * 2, 0.4)	
.setExtraOutputThree(<pyrotech:material:8> * 1, 0.3)	
.addOutput(<ercore:searedbrick_unfired>)
.create();
  
RecipeBuilder.get("potter")
.setShaped([
    [<ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>],
    [<pyrotech:material:5>, <ore:sandpile>, <pyrotech:material:5>, <ore:sandpile>, <pyrotech:material:5>],
    [<ore:ingotBrick>, <pyrotech:material:5>, <ore:sandpile>, <pyrotech:material:5>, <ore:ingotBrick>],
    [<pyrotech:material:5>, <ore:sandpile>, <pyrotech:material:5>, <ore:sandpile>, <pyrotech:material:5>],
    [<ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>]])
.setName("stone_decoration10")  
.setLevelRequired(10)
.setConsumeExperience(false)
.setSecondaryIngredients([<minecraft:clay_ball>])
.setFluid(<liquid:water> * 500)
.addTool(<ore:artisansDriver>, 20)
.addTool(<ore:artisansSpanner>, 20)
.addTool(<ore:artisansChisel>, 20)
.setMaximumTier(2)
.setExtraOutputOne(<minecraft:clay_ball> * 5, 0.4)
.setExtraOutputTwo(<minecraft:brick> * 3, 0.5)	
.setExtraOutputThree(<pyrotech:rock:5> * 6, 0.1)	
.addOutput(<immersiveengineering:stone_decoration:10>)
.create();
  
RecipeBuilder.get("potter")
.setShaped([
    [<ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>],
    [<pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>],
    [<ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>],
    [<pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>],
    [<ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>]])
.setSecondaryIngredients([<minecraft:clay_ball>])
.setFluid(<liquid:coal_tar> * 1000)	
.setLevelRequired(10)
.setConsumeExperience(false)
.addTool(<ore:artisansDriver>, 30)
.addTool(<ore:artisansSpanner>, 30)
.addTool(<ore:artisansChisel>, 30)
.setMaximumTier(2)
.setExtraOutputOne(<minecraft:clay_ball> * 6, 0.3)	 
.setExtraOutputTwo(<minecraft:brick> * 2, 0.6)	
.setExtraOutputThree(<pyrotech:rock:5> * 5, 0.1)
.addOutput(<immersiveengineering:stone_decoration:1>)
.create();

RecipeBuilder.get("potter")
.setShaped([
    [<pyrotech:material:16>, <pyrotech:material:5>, <pyrotech:material:16>, <pyrotech:material:5>, <pyrotech:material:16>],
    [<pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>],
    [<pyrotech:material:16>, <pyrotech:material:5>, <pyrotech:material:16>, <pyrotech:material:5>, <pyrotech:material:16>],
    [<pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>],
    [<pyrotech:material:16>, <pyrotech:material:5>, <pyrotech:material:16>, <pyrotech:material:5>, <pyrotech:material:16>]])
.setName("stone_decoration")
.setLevelRequired(10)
.setConsumeExperience(false)
.setSecondaryIngredients([<minecraft:clay_ball>])
.setFluid(<liquid:coal_tar> * 500)	
.addTool(<ore:artisansDriver>, 30)
.addTool(<ore:artisansSpanner>, 30)
.addTool(<ore:artisansChisel>, 30)
.setMaximumTier(2)
.setExtraOutputOne(<minecraft:clay_ball> * 4, 0.2)	 
.setExtraOutputTwo(<pyrotech:material:16> * 2, 0.5)	
.setExtraOutputThree(<pyrotech:material:4> * 4, 0.3)	
.addOutput(<immersiveengineering:stone_decoration>)
.create();

RecipeBuilder.get("basic")
.setShaped([
    [<ore:dyeYellow>, <ore:dyeLightBlue>, <ore:dyePurple>, <ore:dyeLightBlue>, <ore:dyeYellow>],
    [<ore:dyePurple>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <ore:dyePurple>],
    [<ore:dyeYellow>, <ore:blockGold>, <ore:blockGold>, <ore:blockGold>, <ore:dyeYellow>],
    [<ercore:basalt>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ercore:basalt>],
    [<ercore:basalt>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ercore:basalt>]])
.setName("tailor_workstation")
.setLevelRequired(10)
.setConsumeExperience(false)
.setMaximumTier(2)
.setExtraOutputOne(<minecraft:string> * 5, 0.2)
.setExtraOutputTwo(<pyrotech:material:16> * 7, 0.3)
.setExtraOutputThree(<pyrotech:rock> * 2, 0.5)
.addTool(<ore:artisansShears>, 20)
.addTool(<ercore:tailor_workstation_blueprint>, 2)
.addTool(<ore:artisansCarver>, 30)
.setSecondaryIngredients([<minecraft:wool> * 9])
.addOutput(<artisanworktables:workstation>)
.create();  
  
RecipeBuilder.get("tailor")
.setShaped([
    [<ore:wool>, <ore:wool>, <ore:wool>],
    [<ore:wool>, <pyrotech:material:2>, <ore:wool>],
    [null, null, null]])
.setLevelRequired(2)
.addTool(<ore:artisansNeedle>, 10)
.addTool(<ore:artisansShears>, 10)
.addOutput(<toughasnails:wool_helmet>)
.setExtraOutputOne(<minecraft:string> * 3, 0.3)	 
.setExtraOutputTwo(<minecraft:feather> * 5, 0.7)		   
.setSecondaryIngredients([<ore:string> * 5])
.create();

RecipeBuilder.get("tailor")
.setShaped([
    [<ore:wool>, <pyrotech:material:2>, <ore:wool>],
    [<ore:wool>, <ore:wool>, <ore:wool>],
    [<ore:wool>, <ore:wool>, <ore:wool>]])
.setLevelRequired(5)
.addTool(<ore:artisansNeedle>, 20)
.addTool(<ore:artisansShears>, 20)
.addOutput(<toughasnails:wool_chestplate>)
.setExtraOutputOne(<minecraft:string> * 2, 0.5)	 
.setExtraOutputTwo(<minecraft:feather> * 6, 0.5)		   
.setSecondaryIngredients([<ore:string> * 8])
.create();
  
RecipeBuilder.get("tailor")
.setShaped([
    [<ore:wool>, <ore:wool>, <ore:wool>],
    [<ore:wool>, <pyrotech:material:2>, <ore:wool>],
    [<ore:wool>, <pyrotech:material:2>, <ore:wool>]])
.setSecondaryIngredients([<ore:string> * 7])
.setLevelRequired(3)
.addTool(<ore:artisansNeedle>, 25)
.addTool(<ore:artisansShears>, 15)
.addOutput(<toughasnails:wool_leggings>)
.setExtraOutputOne(<minecraft:string> * 3, 0.4)	 
.setExtraOutputTwo(<minecraft:feather> * 5, 0.6)	
.create();

RecipeBuilder.get("tailor")
.setShaped([
    [<pyrotech:material:2>, null, <pyrotech:material:2>],
    [<ore:wool>, null, <ore:wool>],
    [<ore:wool>, null, <ore:wool>]])
.setLevelRequired(1)
.setSecondaryIngredients([<ore:string> * 4])
.addTool(<ore:artisansNeedle>, 25)
.addTool(<ore:artisansShears>, 15)
.addOutput(<toughasnails:wool_boots>)
.setExtraOutputOne(<minecraft:string>, 0.7)	 
.setExtraOutputTwo(<minecraft:feather> * 2, 0.3)	
.create();
  
RecipeBuilder.get("basic")
.setCopy(
        Copy.byOutput([<artisanworktables:workshop>]).runAfter())
.setName("tailor_workshop")
.setLevelRequired(10)
.addTool(<ercore:tailor_workshop_blueprint>, 2)
.addTool(<ore:artisansHammer>, 25)
.setExtraOutputOne(<minecraft:string>, 0.4)	 
.setExtraOutputTwo(<minecraft:gold_nugget> * 2, 0.6)	
.addOutput(<artisanworktables:workshop>)
.create();
  
RecipeBuilder.get("tailor")
.setShaped([
    [<ore:wool>, <ore:wool>, <ore:wool>, <ore:wool>, <ore:wool>],
    [<ore:wool>, <pyrotech:material:22>, <ore:wool>, <pyrotech:material:22>, <ore:wool>],
    [<ore:wool>, <ore:wool>, <pyrotech:material:22>, <ore:wool>, <ore:wool>],
    [<ore:wool>, <pyrotech:material:22>, <ore:wool>, <pyrotech:material:22>, <ore:wool>],
    [<ore:wool>, <ore:wool>, <ore:wool>, <ore:wool>, <ore:wool>]])
.setSecondaryIngredients([<ore:string> * 9])
.setLevelRequired(5)
.setConsumeExperience(false)
.setMaximumTier(2)
.addTool(<ore:artisansLens>, 10)
.addTool(<ore:artisansNeedle>, 10)
.addTool(<ore:artisansShears>, 15)
.addOutput(<firstaid:plaster>)
.setExtraOutputOne(<minecraft:string>, 0.1)	 
.setExtraOutputTwo(<minecraft:feather> * 2, 0.6)	
.setExtraOutputThree(<minecraft:string> * 2, 0.3)	 
.create();

RecipeBuilder.get("tailor")
.setShaped([
    [<ore:fiberHemp>, <ore:wool>, <ore:wool>, <ore:wool>, <ore:fiberHemp>],
    [<ore:wool>, <ore:wool>, <ore:fiberHemp>, <ore:wool>, <ore:wool>],
    [<ore:wool>, <ore:fiberHemp>, <ore:wool>, <ore:fiberHemp>, <ore:wool>],
    [<ore:wool>, <ore:wool>, <ore:fiberHemp>, <ore:wool>, <ore:wool>],
    [<ore:fiberHemp>, <ore:wool>, <ore:wool>, <ore:wool>, <ore:fiberHemp>]])
.addOutput(<firstaid:bandage>)
.setLevelRequired(5)
.setConsumeExperience(false)
.setMaximumTier(2)
.setSecondaryIngredients([<ore:string> * 8])
.addTool(<ore:artisansLens>, 20)
.addTool(<ore:artisansNeedle>, 20)
.addTool(<ore:artisansShears>, 25)
.setExtraOutputOne(<minecraft:string>, 0.2)	 
.setExtraOutputTwo(<minecraft:feather> * 2, 0.7)
.setExtraOutputThree(<minecraft:string> * 2, 0.1)	 
.create();

RecipeBuilder.get("basic")
.setShaped([
    [<pyrotech:material:42>, <pyrotech:material:42>, <pyrotech:material:42>, <pyrotech:material:42>, <pyrotech:material:42>],
    [<pyrotech:material:42>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <pyrotech:material:42>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ercore:basalt>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ercore:basalt>],
    [<ercore:basalt>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ercore:basalt>]])
.setName("tanner_workstation")
.setLevelRequired(10)
.setConsumeExperience(false)
.addTool(<ore:artisansCarver>, 30)
.addTool(<ore:artisansHammer>, 30)
.addTool(<ercore:tanner_workstation_blueprint>, 2)
.setMaximumTier(2)
.setExtraOutputOne(<pyrotech:rock:7>, 0.2)	 
.setExtraOutputTwo(<pyrotech:material:16> * 2, 0.5)	  
.setExtraOutputThree(<minecraft:leather>, 0.3)	 
.addOutput(<artisanworktables:workstation:13>)
.create();

RecipeBuilder.get("tailor")
.setShaped([
    [<minecraft:string>, <minecraft:string>, <minecraft:string>],
    [<minecraft:string>, <minecraft:string>, <minecraft:string>],
    [<minecraft:string>, <minecraft:string>, <minecraft:string>]])
.setLevelRequired(1)
.addTool(<ore:artisansNeedle>, 25)
.addTool(<ore:artisansShears>, 15)
.addOutput(<minecraft:wool>)
.create();

var colorfulwools = [
<minecraft:wool:1>,
<minecraft:wool:2>,
<minecraft:wool:3>,
<minecraft:wool:4>,
<minecraft:wool:5>,
<minecraft:wool:6>,
<minecraft:wool:7>,
<minecraft:wool:8>,
<minecraft:wool:9>,
<minecraft:wool:10>,
<minecraft:wool:11>,
<minecraft:wool:12>,
<minecraft:wool:13>,
<minecraft:wool:14>,
<minecraft:wool:15>
] as IItemStack[];

var color = [
<ore:dyeOrange>,
<ore:dyeMagenta>,
<ore:dyeLightBlue>,
<ore:dyeYellow>,
<ore:dyeLime>,
<ore:dyePink>,
<ore:dyeGray>,
<ore:dyeLightGray>,
<ore:dyeCyan>,
<ore:dyePurple>,
<ore:dyeBlue>,
<ore:dyeBrown>,
<ore:dyeGreen>,
<ore:dyeRed>,
<ore:dyeBlack>

] as IOreDictEntry[];

for i, colors in color {
var colorfulwools = colorfulwools[i];
RecipeBuilder.get("tailor")
.setShapeless([<minecraft:wool>, colors])
.setLevelRequired(5)
.setConsumeExperience(false)
.addOutput(colorfulwools)  
.create();
}

RecipeBuilder.get("tailor")
.setShaped([
    [<pyrotech:planks_tarred>, <pyrotech:wool_tarred>, <immersiveengineering:metal:38>, <pyrotech:wool_tarred>, <pyrotech:planks_tarred>],
    [<ore:ingotSteel>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <ore:ingotSteel>],
    [<immersiveengineering:metal:38>, <pyrotech:wool_tarred>, <pyrotech:straw_bed>, <pyrotech:wool_tarred>, <immersiveengineering:metal:38>],
    [<ore:ingotSteel>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <ore:ingotSteel>],
    [<pyrotech:planks_tarred>, <pyrotech:wool_tarred>, <immersiveengineering:metal:38>, <pyrotech:wool_tarred>, <pyrotech:planks_tarred>]])
.setName("bed")
.setLevelRequired(25)
.setSecondaryIngredients([<ore:string>])
.setMaximumTier(2)
.addTool(<ore:artisansCutters>, 15)
.addTool(<ercore:bed_blueprint>, 2)
.addTool(<ore:artisansNeedle>, 15)
.setExtraOutputOne(<minecraft:string>, 0.5)	 
.setExtraOutputTwo(<minecraft:feather> * 4, 0.2)	
.setExtraOutputThree(<pyrotech:material:23> * 2, 0.3)	 
.addOutput(<minecraft:bed>)
.create();

var colorfulbeds = [
<minecraft:bed:1>,
<minecraft:bed:2>,
<minecraft:bed:3>,
<minecraft:bed:4>,
<minecraft:bed:5>,
<minecraft:bed:6>,
<minecraft:bed:7>,
<minecraft:bed:8>,
<minecraft:bed:9>,
<minecraft:bed:10>,
<minecraft:bed:11>,
<minecraft:bed:12>,
<minecraft:bed:13>,
<minecraft:bed:14>,
<minecraft:bed:15>

] as IItemStack[];

for i, colors in color {
var colorfulbeds = colorfulbeds[i];
RecipeBuilder.get("tailor")
.setShapeless([<minecraft:bed>, colors])
.setLevelRequired(3)
.setConsumeExperience(false)
.addOutput(colorfulbeds)  
.create();
}

RecipeBuilder.get("blacksmith")
.setShaped([
    [<ore:stickStone>, null, <ore:stickStone>],
    [null, <ore:rodBlaze>, null],
    [<pyrotech:masonry_brick_block>, <ore:blockSteel>, <pyrotech:masonry_brick_block>]])
.setName("brewing_stand")
.setLevelRequired(10)
.addTool(<ore:artisansLens>, 20)
.addTool(<ercore:brewing_stand_blueprint>, 2)
.setExtraOutputOne(<pyrotech:material:16>, 0.6)	 
.setExtraOutputTwo(<minecraft:iron_nugget> * 5, 0.4)
.addOutput(<minecraft:brewing_stand>)
.create();

RecipeBuilder.get("engineer")
 .setShaped([
    [<immersiveengineering:material:25>, <immersiveengineering:material:25>, <immersiveengineering:material:25>, <immersiveengineering:material:25>, <immersiveengineering:material:25>],
    [<immersiveengineering:material:25>, <immersiveengineering:material:24>, <minecraft:coal:1>, <immersiveengineering:material:24>, <immersiveengineering:material:25>],
    [<immersiveengineering:material:25>, <minecraft:coal:1>, <immersiveengineering:material:24>, <minecraft:coal:1>, <immersiveengineering:material:25>],
    [<immersiveengineering:material:25>, <immersiveengineering:material:24>, <minecraft:coal:1>, <immersiveengineering:material:24>, <immersiveengineering:material:25>],
    [<immersiveengineering:material:25>, <immersiveengineering:material:25>, <immersiveengineering:material:25>, <immersiveengineering:material:25>, <immersiveengineering:material:25>]])
.setName("gunpowder")
.setLevelRequired(30)
.setConsumeExperience(false)
.setMaximumTier(2)
.addTool(<ore:artisansBeaker>, 10)
.addTool(<ore:artisansSifter>, 5)
.addTool(<ore:artisansMortar>, 10)
.setExtraOutputOne(<pyrotech:material:21> * 3, 0.8)	 
.setExtraOutputTwo(<immersiveengineering:material:25>, 0.1)	
.setExtraOutputThree(<immersiveengineering:material:24>, 0.1)
.addOutput(<minecraft:gunpowder>)
.create();

recipes.remove(<usefulbackpacks:backpack:*>);

var colorfulsmallbags = [
<usefulbackpacks:backpack>.withTag({display: {color: 16383998}}),
<usefulbackpacks:backpack>.withTag({display: {color: 16351261}}),
<usefulbackpacks:backpack>.withTag({display: {color: 13061821}}),
<usefulbackpacks:backpack>.withTag({display: {color: 3847130}}),
<usefulbackpacks:backpack>.withTag({display: {color: 16701501}}),
<usefulbackpacks:backpack>.withTag({display: {color: 8439583}}),
<usefulbackpacks:backpack>.withTag({display: {color: 15961002}}),
<usefulbackpacks:backpack>.withTag({display: {color: 4673362}}),
<usefulbackpacks:backpack>.withTag({display: {color: 10329495}}),
<usefulbackpacks:backpack>.withTag({display: {color: 1481884}}),
<usefulbackpacks:backpack>.withTag({display: {color: 8991416}}),
<usefulbackpacks:backpack>.withTag({display: {color: 3949738}}),
<usefulbackpacks:backpack>.withTag({display: {color: 8606770}}),
<usefulbackpacks:backpack>.withTag({display: {color: 6192150}}),
<usefulbackpacks:backpack>.withTag({display: {color: 11546150}}),
<usefulbackpacks:backpack>.withTag({display: {color: 1908001}})
] as IItemStack[];

for i, colors in color {
var colorfulsmallbags = colorfulsmallbags[i];
RecipeBuilder.get("tanner")
.setShapeless([<usefulbackpacks:backpack>, colors])
.setLevelRequired(5)
.setConsumeExperience(false)
.addOutput(colorfulsmallbags)
.create();
}

var colorfulmidbags = [
<usefulbackpacks:backpack:1>.withTag({display: {color: 16383998}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 16351261}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 13061821}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 3847130}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 16701501}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 8439583}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 15961002}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 4673362}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 10329495}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 1481884}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 8991416}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 3949738}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 8606770}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 6192150}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 11546150}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 1908001}})
] as IItemStack[];

for i, colors in color {
var colorfulmidbags = colorfulmidbags[i];
RecipeBuilder.get("tanner")
.setShapeless([<usefulbackpacks:backpack:1>, colors])
.setLevelRequired(10)
.setConsumeExperience(false)
.addOutput(colorfulmidbags)
.create();
}

var colorfullargebags = [
<usefulbackpacks:backpack:2>.withTag({display: {color: 16383998}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 16351261}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 13061821}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 3847130}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 16701501}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 8439583}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 15961002}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 4673362}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 10329495}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 1481884}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 8991416}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 3949738}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 8606770}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 6192150}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 11546150}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 1908001}})
] as IItemStack[];

for i, colors in color {
var colorfullargebags = colorfullargebags[i];
RecipeBuilder.get("tanner")
.setShapeless([<usefulbackpacks:backpack:2>, colors])
.setLevelRequired(15)
.setConsumeExperience(false)
.addOutput(colorfullargebags)
.create();
}

RecipeBuilder.get("tanner")
.setShaped([
    [<ore:wool>, <ore:leather>, <ore:wool>],
    [<ore:leather>, <pyrotech:crate_stone>, <ore:leather>],
    [<ore:wool>, <ore:leather>, <ore:wool>]])
.setName("smallbag")
.setLevelRequired(5)
.setConsumeExperience(false)
.setSecondaryIngredients([<ore:string> * 4, <pyrotech:material:44> * 2])  
.setExtraOutputOne(<minecraft:leather>, 0.1)	 
.setExtraOutputTwo(<minecraft:string> * 2, 0.9)	
.addTool(<ercore:small_backpack_blueprint>, 2)
.addTool(<ore:artisansPunch>, 10)
.addOutput(<usefulbackpacks:backpack>)
.create();

RecipeBuilder.get("tanner")
.setShaped([
    [<ore:leather>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <ore:leather>],
    [<pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <ore:leather>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>],
    [<pyrotech:wool_tarred>, <ore:leather>, <usefulbackpacks:backpack>, <ore:leather>, <pyrotech:wool_tarred>],
    [<pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <ore:leather>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>],
    [<ore:leather>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <ore:leather>]])
.setName("midbag")
.setLevelRequired(10)
.setConsumeExperience(false)
.setSecondaryIngredients([<ore:string> * 6, <pyrotech:material:44> * 4])  
.setExtraOutputOne(<minecraft:leather> * 4, 0.2)	 
.setExtraOutputTwo(<minecraft:string> * 3, 0.4)
.setExtraOutputThree(<minecraft:feather> * 2, 0.4)  
.addTool(<ore:artisansGroover>, 15)
.addTool(<ercore:medium_backpack_blueprint>, 2)
.addTool(<ore:artisansShears>, 20)
.addOutput(<usefulbackpacks:backpack:1>)
.create();

RecipeBuilder.get("tanner")
.setShaped([
    [<minecraft:leather>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <minecraft:leather>],
    [<pyrotech:wool_tarred>, <minecraft:leather>, <pyrotech:wool_tarred>, <minecraft:leather>, <pyrotech:wool_tarred>],
    [<pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <usefulbackpacks:backpack:1>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>],
    [<pyrotech:wool_tarred>, <minecraft:leather>, <pyrotech:wool_tarred>, <minecraft:leather>, <pyrotech:wool_tarred>],
    [<minecraft:leather>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <minecraft:leather>]])
.setName("largebag")
.setLevelRequired(15)
.setConsumeExperience(false)
.setSecondaryIngredients([<ore:string> * 8, <pyrotech:material:44> * 4, <pyrotech:material:43> * 2])  
.setExtraOutputOne(<minecraft:leather> * 2, 0.3)	 
.setExtraOutputTwo(<minecraft:string> * 4, 0.5)
.setExtraOutputThree(<minecraft:feather> * 6, 0.2)  
.addTool(<ercore:large_backpack_blueprint>, 2)
.addTool(<ore:artisansNeedle>, 25)
.addTool(<ore:artisansPunch>, 30)  
.addOutput(<usefulbackpacks:backpack:2>)
.create();
  
RecipeBuilder.get("tanner")
.setShaped([
    [<pyrotech:wool_tarred>, <minecraft:leather>, <pyrotech:wool_tarred>],
    [<minecraft:leather>, <pyrotech:crate>, <minecraft:leather>],
    [<pyrotech:wool_tarred>, <minecraft:leather>, <pyrotech:wool_tarred>]])
.setName("simplebag")
.setLevelRequired(3)
.setConsumeExperience(false)
.setSecondaryIngredients([<ore:string> * 4])  
.setExtraOutputTwo(<minecraft:string> * 2, 0.8)
.setExtraOutputThree(<minecraft:leather>, 0.2)  
.addTool(<ore:artisansNeedle>, 15)
.addTool(<ercore:quarry_bag_blueprint>, 2)  
.addOutput(<pyrotech:bag_simple>)
.create();
  
RecipeBuilder.get("basic")
.setCopy(
        Copy.byOutput([<artisanworktables:workshop:13>]).runAfter())
.setName("tanner_workshop")
.setLevelRequired(20)
.setExtraOutputTwo(<minecraft:string> * 3, 0.5)
.setExtraOutputThree(<minecraft:leather> * 6, 0.5)  
.addTool(<ercore:tanner_workshop_blueprint>, 2)
.addTool(<ore:artisansPunch>, 15)  
.addOutput(<artisanworktables:workshop:13>)
.create();
  
RecipeBuilder.get("tanner")
.setShaped([
    [<ore:leather>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <ore:leather>],
    [<pyrotech:wool_tarred>, <ore:leather>, <ore:ingotGold>, <ore:leather>, <pyrotech:wool_tarred>],
    [<pyrotech:wool_tarred>, <ore:ingotGold>, <pyrotech:bag_simple>, <ore:ingotGold>, <pyrotech:wool_tarred>],
    [<pyrotech:wool_tarred>, <ore:leather>, <ore:ingotGold>, <ore:leather>, <pyrotech:wool_tarred>],
    [<ore:leather>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <ore:leather>]])
.setName("durablebag")
.setLevelRequired(10)
.setConsumeExperience(false)
.setExtraOutputOne(<minecraft:leather>, 0.5)	 
.setExtraOutputTwo(<minecraft:string> * 3, 0.2)
.setExtraOutputThree(<minecraft:gold_nugget> * 5, 0.3)  
.addTool(<ercore:durable_quarry_bag_blueprint>, 2)
.addTool(<ore:artisansNeedle>, 35)
.addTool(<ore:artisansPunch>, 10)  
.setSecondaryIngredients([<pyrotech:material:26> * 6])
.addOutput(<pyrotech:bag_durable>)
.create();
  
RecipeBuilder.get("engineer")
.setShaped([
    [<ore:sandpile>, <ore:gunpowder>, <ore:powderBlaze>, <ore:gunpowder>, <ore:sandpile>],
    [<ore:gunpowder>, <ore:powderBlaze>, <ore:sandpile>, <ore:powderBlaze>, <ore:gunpowder>],
    [<ore:powderBlaze>, <ore:sandpile>, <pyrotech:material:30>, <ore:sandpile>, <ore:powderBlaze>],
    [<ore:gunpowder>, <ore:powderBlaze>, <ore:sandpile>, <ore:powderBlaze>, <ore:gunpowder>],
    [<ore:sandpile>, <ore:gunpowder>, <ore:powderBlaze>, <ore:gunpowder>, <ore:sandpile>]])
.setFluid(<liquid:coal_tar> * 2000)
.setName("tnt")
.setLevelRequired(30)
.setConsumeExperience(false)
.setMaximumTier(2)
.setSecondaryIngredients([<minecraft:fire_charge>])  
.addTool(<ore:artisansSifter>, 15)
.addTool(<ore:artisansLens>, 20)
.addTool(<ercore:explosive_blueprint>, 2)
.setExtraOutputOne(<minecraft:blaze_powder>, 0.1)	 
.setExtraOutputTwo(<minecraft:gunpowder> * 2, 0.4)	
.setExtraOutputThree(<pyrotech:material:21> * 3, 0.5)
.addOutput(<minecraft:tnt>)
.create();
 
for i, colors in color {
var colorfulwools = colorfulwools[i];
RecipeBuilder.get("tailor")
.setShapeless([<minecraft:wool>, colors])
.setLevelRequired(5)
.setConsumeExperience(false)
.addOutput(colorfulwools)  
.create();
}

for recipe in recipes.getRecipesFor(<ore:artisansTool>) {
RecipeBuilder.get("blacksmith")
.setCopy(Copy.byRecipe(recipe))
.setLevelRequired(5)
.setConsumeExperience(false)
.setSecondaryIngredients([<pyrotech:chopping_block>])  
.addTool(<ercore:tool_blueprint>, 2)
.addTool(<ore:artisansHammer>, 10)
.setExtraOutputOne(<pyrotech:rock:7> * 3, 0.7)	 
.setExtraOutputTwo(<pyrotech:rock:7> * 4, 0.3)	
.create();	
	
RecipeBuilder.get("engineer")
.setCopy(Copy.byRecipe(recipe))
.setLevelRequired(5)
.setSecondaryIngredients([<pyrotech:chopping_block>])  
.addTool(<ore:artisansHandsaw>, 10)
.addTool(<ercore:tool_blueprint>, 2)
.setExtraOutputOne(<pyrotech:rock:7> * 5, 0.6)
.setExtraOutputTwo(<pyrotech:rock:7> * 6, 0.4)
.create();
}

for recipe1 in recipes.getRecipesFor(<ore:artisansTool>) {
RecipeBuilder.get("basic")
.setCopy(Copy.byRecipe(recipe1))
.setLevelRequired(3)
.setConsumeExperience(false)
.addTool(<ercore:tool_blueprint>, 2)
.setSecondaryIngredients([<pyrotech:chopping_block>])  
.setExtraOutputOne(<pyrotech:rock:7>, 0.8)	 
.setExtraOutputTwo(<pyrotech:rock:7> * 2, 0.2)	
.create();	
}
	
RecipeBuilder.get("engineer")
.setShaped([
    [<ore:stickTreatedWood>, null, null, null, <ore:stickTreatedWood>],
    [<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>],
    [<ore:stickTreatedWood>, null, null, null, <ore:stickTreatedWood>],
    [<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>],
    [<ore:stickTreatedWood>, null, null, null, <ore:stickTreatedWood>]])
.setName("ladder")
.setLevelRequired(10)
.setConsumeExperience(false)
.setMaximumTier(2)
.setSecondaryIngredients([<ore:string> * 4])  
.addTool(<ore:artisansTSquare>, 15)
.addTool(<ore:artisansCarver>, 20)
.addTool(<ercore:ladder_blueprint>, 2)
.setExtraOutputOne(<pyrotech:rock:7> * 4, 0.4)	 
.setExtraOutputTwo(<pyrotech:rock:7> * 2, 0.3)	
.setExtraOutputThree(<pyrotech:rock:7> * 3, 0.3)  
.addOutput(<minecraft:ladder>)
.create();

for recipe2 in recipes.getRecipesFor(<ore:vacuumbag>) {
RecipeBuilder.get("engineer")
.setCopy(Copy.byRecipe(recipe2))
.setLevelRequired(10)
.addTool(<ore:artisansNeedle>, 10)
.addTool(<ercore:vacuum_bag_blueprint>, 2)
.setExtraOutputOne(<minecraft:string> * 3, 0.3)	 
.setExtraOutputTwo(<minecraft:feather> * 2, 0.7)
.setSecondaryIngredients([<ore:string> * 9])
.create();
}

for recipe3 in recipes.getRecipesFor(<ore:respirator>) {
RecipeBuilder.get("engineer")
.setCopy(Copy.byRecipe(recipe3))
.setLevelRequired(10)
.addTool(<ercore:toxic_mask_blueprint>, 2)
.addTool(<ore:artisansShears>, 10)
.setExtraOutputOne(<minecraft:string> * 4, 0.6)	 
.setExtraOutputTwo(<minecraft:feather> * 5, 0.4)		   
.setSecondaryIngredients([<ore:string> * 8])
.create();
}

RecipeBuilder.get("blacksmith")
.setShaped([
    [<pyrotech:planks_tarred>, <ore:plateSteel>, <pyrotech:planks_tarred>, <ore:plateSteel>, <pyrotech:planks_tarred>],
    [<ore:plateSteel>, <pyrotech:crate_stone>, <pyrotech:crate_stone>, <pyrotech:crate_stone>, <ore:plateSteel>],
    [<pyrotech:planks_tarred>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <pyrotech:planks_tarred>],
    [<ore:plateSteel>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <ore:plateSteel>],
    [<pyrotech:planks_tarred>, <ore:plateSteel>, <pyrotech:planks_tarred>, <ore:plateSteel>, <pyrotech:planks_tarred>]])
.setName("chest")
.setLevelRequired(10)
.setMaximumTier(2)
.setExtraOutputOne(<minecraft:iron_nugget> * 5, 0.4)
.setExtraOutputTwo(<pyrotech:rock:7> * 8, 0.5)	
.setExtraOutputThree(<pyrotech:material:23> * 2, 0.1)	
.addTool(<ercore:chest_blueprint>, 2)  
.addTool(<ore:artisansHammer>, 30)
.addTool(<ore:artisansCarver>, 40) 
.addOutput(<minecraft:chest>)
.create();

for recipe4 in recipes.all {
    if (recipe4.resourceDomain == "comforts") {
        RecipeBuilder.get("tailor")
        .setCopy(Copy.byRecipe(recipe4))
        .setLevelRequired(10)
        .addTool(<ore:artisansNeedle>, 15)
        .addTool(<ercore:tool_blueprint>, 2)
        .setExtraOutputOne(<minecraft:string> * 2, 0.5)	 
        .setExtraOutputTwo(<minecraft:feather> * 1, 0.5)
        .setSecondaryIngredients([<ore:string> * 9])
        .create();
    }
}

function awBlackSmithShaped(name as string, output as IItemStack, input as IOreDictEntry){
RecipeBuilder.get("blacksmith")
 .setShaped([
    [input, input, input],
    [input, input, input],
    [input, input, input]])
 .addOutput(output)
 .addTool(<ore:artisansHammer>, 10)
 .setFluid(<liquid:lava> * 100)
 .create();
}

function awBlackSmithShapeless(name as string, output as IItemStack, input as IOreDictEntry, mount as int){
RecipeBuilder.get("blacksmith")
 .setShapeless([input])
 .addOutput(output * mount)
 .addTool(<ore:artisansHammer>, 10)
 .create();
}

awBlackSmithShaped("iron_block_from_ingot", <minecraft:iron_block>, <ore:ingotIron>);
awBlackSmithShaped("gold_block_from_ingot", <minecraft:gold_block>, <ore:ingotGold>);
awBlackSmithShaped("diamond_block_from_diamond", <minecraft:diamond_block>, <ore:gemDiamond>);
awBlackSmithShaped("emerald_block_from_emerald", <minecraft:emerald_block>, <ore:gemEmerald>);
awBlackSmithShaped("slime_block_from_slimeball", <minecraft:slime>, <ore:slimeball>);
awBlackSmithShaped("slakedlime_block_from_slakedlime", <ercore:slakedlime_block>, <ore:slakedLime>);
awBlackSmithShaped("soil_from_cement_powder", <tconstruct:soil>, <ore:powderCement>);
awBlackSmithShaped("steel_block_from_ingot", <immersiveengineering:storage:8>, <ore:ingotSteel>);
awBlackSmithShaped("quartz_block_from_ingot", <minecraft:quartz_block>, <ore:gemQuartz>);
awBlackSmithShaped("copper_block_from_ingot", <galacticraftcore:basic_block_core:9>, <ore:ingotCopper>);
awBlackSmithShaped("cobalt_block_from_ingot", <tconstruct:metal>, <ore:ingotCobalt>);
awBlackSmithShaped("ardite_block_from_ingot", <tconstruct:metal:1>, <ore:blockArdite>);
awBlackSmithShaped("manyullyn_block_from_ingot", <tconstruct:metal:2>, <ore:blockManyullyn>);
awBlackSmithShaped("knightslime_block_from_ingot", <tconstruct:metal:3>, <ore:blockKnightslime>);
awBlackSmithShaped("alubrass_block_from_ingot", <tconstruct:metal:5>, <ore:blockAlubrass>);
awBlackSmithShaped("knightmetal_block_from_ingot", <twilightforest:knightmetal_block>, <ore:ingotKnightmetal>);
awBlackSmithShaped("fiery_block_from_ingot", <twilightforest:block_storage:1>, <ore:ingotFiery>);
awBlackSmithShaped("ironwood_block_from_ingot", <twilightforest:block_storage>, <ore:ingotIronwood>);
awBlackSmithShaped("Electrum_block_from_ingot", <immersiveengineering:storage:7>, <ore:ingotElectrum>);
awBlackSmithShaped("constantan_block_from_ingot", <immersiveengineering:storage:6>, <ore:blockConstantan>);
awBlackSmithShaped("nickel_block_from_ingot", <immersiveengineering:storage:4>, <ore:blockNickel>);
awBlackSmithShaped("silver_block_from_ingot", <immersiveengineering:storage:3>, <ore:blockSilver>);
awBlackSmithShaped("uranium_block_from_ingot", <immersiveengineering:storage:5>, <ore:blockUranium>);
awBlackSmithShaped("steeleaf_block_from_ingot", <twilightforest:block_storage:2>, <ore:ingotSteeleaf>);
awBlackSmithShaped("carminite_block_from_ingot", <twilightforest:block_storage:4>, <ore:carminite>);
awBlackSmithShaped("lead_block_from_ingot", <immersiveengineering:storage:2>, <ore:ingotLead>);
awBlackSmithShaped("furarctic_block_from_ingot", <twilightforest:block_storage:3>, <ore:furArctic>);

awBlackSmithShapeless("nugget_from_ingot_tungsten", <ercore:tungsten_nugget>, <ore:ingotTungsten>, 9);
awBlackSmithShapeless("nugget_from_ingot_aluminum", <immersiveengineering:metal:21>, <ore:ingotAluminum>, 9);
awBlackSmithShapeless("nugget_from_ingot_lead", <immersiveengineering:metal:22>, <ore:ingotLead>, 9);
awBlackSmithShapeless("nugget_from_ingot_silver", <immersiveengineering:metal:24>, <ore:ingotSilver>, 9);
awBlackSmithShapeless("nugget_from_ingot_nickel", <immersiveengineering:metal:23>, <ore:ingotNickel>, 9);
awBlackSmithShapeless("nugget_from_ingot_uranium", <immersiveengineering:metal:25>, <ore:ingotUranium>, 9);
awBlackSmithShapeless("nugget_from_ingot_constantan", <immersiveengineering:metal:26>, <ore:ingotConstantan>, 9);
awBlackSmithShapeless("nugget_from_ingot_electrum", <immersiveengineering:metal:27>, <ore:ingotElectrum>, 9);
awBlackSmithShapeless("nugget_from_ingot_cobalt", <tconstruct:nuggets>, <ore:ingotCobalt>, 9);
awBlackSmithShapeless("nugget_from_ingot_ardite", <tconstruct:nuggets:1>, <ore:ingotArdite>, 9);
awBlackSmithShapeless("nugget_from_ingot_manyullyn", <tconstruct:nuggets:2>, <ore:ingotManyullyn>, 9);
awBlackSmithShapeless("nugget_from_ingot_knightslime", <tconstruct:nuggets:3>, <ore:ingotKnightslime>, 9);
awBlackSmithShapeless("nugget_from_ingot_alubrass", <tconstruct:nuggets:5>, <ore:ingotAlubrass>, 9);
awBlackSmithShapeless("nugget_from_ingot_gold", <minecraft:gold_nugget>, <ore:ingotGold>, 9);
awBlackSmithShapeless("nugget_from_ingot_copper", <immersiveengineering:metal:20>, <ore:ingotCopper>, 9);
awBlackSmithShapeless("nugget_from_ingot_tin", <ercore:tin_nugget>, <ore:ingotTin>, 9);
awBlackSmithShapeless("copper_plate_from_block", <immersiveengineering:metal:30>, <ore:blockCopper>, 3);
awBlackSmithShapeless("gold_plate_from_block", <immersiveengineering:metal:40>, <ore:blockGold>, 3);
awBlackSmithShapeless("flint_from_limestone", <minecraft:flint>, <ore:stoneLimestone>, 3);

val woods = [
<biomesoplenty:planks_0:13>,
<biomesoplenty:planks_0:8>,
<biomesoplenty:planks_0>,
<biomesoplenty:planks_0:10>,
<minecraft:planks:2>,
<biomesoplenty:planks_0:3>,
<biomesoplenty:planks_0:2>,
<biomesoplenty:planks_0:15>,
<biomesoplenty:planks_0:4>,
<biomesoplenty:planks_0:1>,
<biomesoplenty:planks_0:5>,
<minecraft:planks:5>,
<biomesoplenty:planks_0:11>,
<minecraft:planks:3>,
<minecraft:planks:4>,
<minecraft:planks:1>,
<twilightforest:mangrove_planks>,
<biomesoplenty:planks_0:12>,
<biomesoplenty:planks_0:14>,
<biomesoplenty:planks_0:7>,
<biomesoplenty:planks_0:9>,
] as IItemStack[];

val tables = [
<mctb:mahogany_crafting_table>,
<mctb:redwood_crafting_table>,
<mctb:sacred_oak_crafting_table>,
<mctb:pine_crafting_table>,
<mctb:birch_crafting_table>,
<mctb:fir_crafting_table>,
<mctb:umbran_crafting_table>,
<mctb:eucalyptus_crafting_table>,
<mctb:ethereal_crafting_table>,
<mctb:cherry_crafting_table>,
<mctb:magic_crafting_table>,
<mctb:dark_oak_crafting_table>,
<mctb:hellbark_crafting_table>,
<mctb:jungle_crafting_table>,
<mctb:acacia_crafting_table>,
<mctb:spruce_crafting_table>,
<mctb:mangrove_crafting_table>,
<mctb:jacaranda_crafting_table>,
<mctb:ebony_crafting_table>,
<mctb:palm_crafting_table>,
<mctb:willow_crafting_table>
] as IItemStack[];

for i, wood in woods {
val table = tables[i];
RecipeBuilder.get("engineer")
.setShaped([
    [<pyrotech:masonry_brick_block>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <pyrotech:masonry_brick_block>],
    [wood, <pyrotech:planks_tarred>, <pyrotech:crate_stone>, <pyrotech:planks_tarred>, wood],
    [wood, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, wood],
    [wood, <ore:blockIron>, <ore:blockIron>, <ore:blockIron>, wood],
    [wood, <ercore:basalt>, <ercore:basalt>, <ercore:basalt>, wood]])
.setLevelRequired(30)
.setFluid(<liquid:lava> * 2000)
.setMaximumTier(2)
.setExtraOutputOne(<minecraft:iron_nugget> * 5, 0.5)
.setExtraOutputTwo(<pyrotech:rock:7> * 8, 0.3)	
.setExtraOutputThree(<immersiveengineering:metal:28> * 2, 0.2)	
.addTool(<ore:artisansTSquare>, 40)  
.addTool(<ercore:crafting_table_blueprint>, 2)
.addTool(<ore:artisansCarver>, 40) 
.setSecondaryIngredients([<immersiveengineering:metal:30> * 9])
.addOutput(table)
.create();
}