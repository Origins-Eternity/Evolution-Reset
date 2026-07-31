#
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.Copy;
import crafttweaker.oredict.IOreDictEntry;

RecipeBuilder.get("basic")
.setShaped([
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
.setName("treated_wood")
.setLevelRequired(5)
.setConsumeExperience(false)
.addTool(<ore:artisansHandsaw>, 5)
.addTool(<ore:artisansCarver>, 5)
.setExtraOutputOne(<pyrotech:rock:7> * 7, 0.2)
.setExtraOutputTwo(<pyrotech:rock:7> * 5, 0.8)
.setFluid(<liquid:creosote> * 1000)
.addOutput(<immersiveengineering:treated_wood> * 9)
.create();
  
RecipeBuilder.get("basic")
.setCopy(
        Copy.byOutput([<artisanworktables:workshop:5>]).runAfter())
.setName("basic_workshop")
.setLevelRequired(10)
.addTool(<ercore:workshop_blueprint>, 2)
.addTool(<ore:artisansCarver>, 10)
.setExtraOutputOne(<pyrotech:material:23> * 2, 0.9)
.setExtraOutputTwo(<pyrotech:material:23> * 3, 0.1)
.create();

RecipeBuilder.get("basic")
.setShaped([
    [<ore:ingotIron>, <ore:plateIron>, <ore:ingotIron>, <ore:plateIron>, <ore:ingotIron>],
    [<ore:plateIron>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:plateIron>],
    [<ore:ingotIron>, <ore:paneGlassColorless>, null, <ore:paneGlassColorless>, <ore:ingotIron>],
    [<ore:plateIron>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:plateIron>],
    [<ore:ingotIron>, <ore:plateIron>, <ore:ingotIron>, <ore:plateIron>, <ore:ingotIron>]])
.setName("iron_filter")
.setLevelRequired(15)
.setMaximumTier(2)
.setConsumeExperience(false)
.setFluid(<liquid:lava> * 1500)
.addTool(<ore:artisansCutters>, 15)
.addTool(<ore:artisansHammer>, 15)
.addTool(<ercore:filter_blueprint>, 2)
.setExtraOutputOne(<immersiveengineering:metal:18> * 4, 0.3)
.setExtraOutputTwo(<pyrotech:material:32> * 5, 0.5)
.setExtraOutputThree(<minecraft:iron_nugget> * 6, 0.2)
.addOutput(<adpother:iron_filter>)
.create();

RecipeBuilder.get("basic")
.setShaped([
    [<ore:ingotGold>, <ore:plateGold>, <ore:ingotGold>, <ore:plateGold>, <ore:ingotGold>],
    [<ore:plateGold>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:plateGold>],
    [<ore:ingotGold>, <ore:paneGlassColorless>, null, <ore:paneGlassColorless>, <ore:ingotGold>],
    [<ore:plateGold>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:plateGold>],
    [<ore:ingotGold>, <ore:plateGold>, <ore:ingotGold>, <ore:plateGold>, <ore:ingotGold>]])
.setName("gold_filter")
.setLevelRequired(10)
.setMaximumTier(2)
.setConsumeExperience(false)
.setFluid(<liquid:lava> * 1000)
.addTool(<ore:artisansCutters>, 10)
.addTool(<ore:artisansHammer>, 10)
.addTool(<ercore:filter_blueprint>, 2)
.setExtraOutputOne(<immersiveengineering:metal:19> * 4, 0.3)
.setExtraOutputTwo(<pyrotech:material:32> * 5, 0.5)
.setExtraOutputThree(<minecraft:gold_nugget> * 6, 0.2)
.addOutput(<adpother:gold_filter>)
.create();

RecipeBuilder.get("basic")
.setShaped([
    [<ore:gemDiamond>, <ore:plateSteel>, <ore:gemDiamond>, <ore:plateSteel>, <ore:gemDiamond>],
    [<ore:plateSteel>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:plateSteel>],
    [<ore:gemDiamond>, <ore:paneGlassColorless>, null, <ore:paneGlassColorless>, <ore:gemDiamond>],
    [<ore:plateSteel>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:plateSteel>],
    [<ore:gemDiamond>, <ore:plateSteel>, <ore:gemDiamond>, <ore:plateSteel>, <ore:gemDiamond>]])
.setName("diamond_filter")
.setLevelRequired(20)
.setMaximumTier(2)
.setConsumeExperience(false)
.setFluid(<liquid:lava> * 2000)
.addTool(<ore:artisansCutters>, 20)
.addTool(<ore:artisansHammer>, 20)
.addTool(<ercore:filter_blueprint>, 2)
.setExtraOutputOne(<immersiveengineering:metal:17> * 2, 0.3)
.setExtraOutputTwo(<pyrotech:material:32> * 9, 0.5)
.setExtraOutputThree(<pyrotech:material:18> * 3, 0.2)
.addOutput(<adpother:diamond_filter>)
.create();

RecipeBuilder.get("basic")
.setCopy(
        Copy.byOutput([<immersiveengineering:wooden_device0>]).runAfter())
.setName("wooden_storage")
.setLevelRequired(15)
.setExtraOutputOne(<pyrotech:rock:7> * 2, 0.6)
.setExtraOutputTwo(<pyrotech:rock:7> * 5, 0.4)	
.addTool(<ore:artisansHandsaw>, 15)
.addTool(<ore:artisansCarver>, 10) 
.create();

RecipeBuilder.get("basic")
.setCopy(
        Copy.byOutput([<immersiveengineering:wooden_device0:1>]).runAfter())
.setName("wooden_barrel")
.setLevelRequired(15)
.setExtraOutputOne(<pyrotech:rock:7> * 2, 0.5)
.setExtraOutputTwo(<pyrotech:rock:7> * 3, 0.5)	
.addTool(<ore:artisansHandsaw>, 10)
.addTool(<ore:artisansCarver>, 10) 
.create();
  
RecipeBuilder.get("basic")
.setShaped([
    [<ore:blockSteel>, <ore:plateCopper>, <ore:plateSteel>, <ore:plateCopper>, <ore:blockSteel>],
    [<ore:plateCopper>, <pyrotech:stash_stone>, <artisanworktables:workstation:6>, <pyrotech:stash_stone>, <ore:plateCopper>],
    [<ore:blockSteel>, <ore:plateCopper>, <ore:plateSteel>, <ore:plateCopper>, <ore:blockSteel>],
    [<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>],
    [<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>]])
.setName("engineer_workshop")
.setLevelRequired(10)
.setConsumeExperience(false)
.setFluid(<liquid:lava> * 4000)
.setMaximumTier(2)
.setExtraOutputOne(<immersiveengineering:metal:28> * 5, 0.6)
.setExtraOutputTwo(<pyrotech:rock:7> * 8, 0.2)	
.setExtraOutputThree(<immersiveengineering:metal:20> * 3, 0.2)	
.addTool(<ore:artisansTSquare>, 35)  
.addTool(<ercore:workshop_blueprint>, 2)
.addTool(<ore:artisansCarver>, 30)
.addOutput(<artisanworktables:workshop:6>)
.create();
  
RecipeBuilder.get("engineer")
.setShaped([
    [<ore:plateIron>, <ore:plateSteel>, <ore:plateIron>, <ore:plateSteel>, <ore:plateIron>],
    [<ore:plateSteel>, <ore:plateGold>, <ore:plateGold>, <ore:plateGold>, <ore:plateSteel>],
    [<ore:plateIron>, <ore:plateGold>, <pyrotech:igniter:1>, <ore:plateGold>, <ore:plateIron>],
    [<ore:plateSteel>, <ore:plateGold>, <ore:plateSteel>, <ore:plateGold>, <ore:plateSteel>],
    [<ore:plateIron>, <ore:plateSteel>, <ore:plateIron>, <ore:plateSteel>, <ore:plateIron>]])
.setName("furnace_core")
.setLevelRequired(30)
.addTool(<ercore:furnace_core_blueprint>, 2)
.setFluid(<liquid:lava> * 5000)
.addTool(<ore:artisansCarver>, 30)  
.addTool(<ore:artisansTSquare>, 35)   
.setMaximumTier(2)
.setExtraOutputOne(<minecraft:iron_nugget> * 4, 0.4)
.setExtraOutputTwo(<minecraft:gold_nugget> * 6, 0.4)	
.setExtraOutputThree(<immersiveengineering:metal:28> * 2, 0.2)
.addOutput(<pyrotech:furnace_core>)
.create(); 
  
RecipeBuilder.get("basic")
.setCopy(
        Copy.byOutput([<artisanworktables:workstation:6>]).runAfter())
.setName("engineer_workstation")
.setLevelRequired(15)
.setConsumeExperience(false)
.setFluid(<liquid:lava> * 2000)	
.addTool(<ore:artisansDriver>, 20)
.addTool(<ore:artisansCarver>, 15)
.setExtraOutputOne(<immersiveengineering:metal:20> * 3, 0.8)	
.setExtraOutputTwo(<immersiveengineering:metal:28> * 7, 0.2)	
.create();

RecipeBuilder.get("engineer")
.setShaped([
    [<minecraft:nether_brick>, <ore:plateSteel>, <minecraft:skull:1>, <ore:plateSteel>, <minecraft:nether_brick>],
    [<ore:plateSteel>, <minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>, <ore:plateSteel>],
    [<minecraft:skull:1>, <minecraft:nether_brick>, <pyrotech:bloomery>, <minecraft:nether_brick>, <minecraft:skull:1>],
    [<ore:plateSteel>, <minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>, <ore:plateSteel>],
    [<minecraft:nether_brick>, <ore:plateSteel>, <minecraft:skull:1>, <ore:plateSteel>, <minecraft:nether_brick>]])
.setName("wither_forge")
.setLevelRequired(30)
.setSecondaryIngredients([<minecraft:fire_charge> * 4])
.setFluid(<liquid:lava> * 4000)	
.addTool(<ercore:wither_forge_blueprint>, 2)
.addTool(<ore:artisansSpanner>, 30)
.addTool(<ore:artisansChisel>, 35)
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
.addTool(<ercore:workshop_blueprint>, 2)
.create();
  
RecipeBuilder.get("potter")
.setShaped([
    [null, null, null, <ercore:cement_powder>, null],
    [null, <ercore:cement_powder>, <ercore:cement_powder>, <ercore:cement_powder>, null],
    [null, <ercore:cement_powder>, <ercore:cement_powder>, <ercore:cement_powder>, null],
    [null, <ercore:cement_powder>, null, null, null]])
.setFluid(<liquid:water> * 500)
.setLevelRequired(5)
.setConsumeExperience(false)
.addTool(<ore:artisansDriver>, 10)
.addTool(<ore:artisansTrowel>, 10)
.addTool(<ore:artisansChisel>, 15)
.setMaximumTier(2)
.setExtraOutputOne(<pyrotech:material:17> * 3, 0.7)	 
.setExtraOutputTwo(<pyrotech:material:22> * 1, 0.2)	
.setExtraOutputThree(<pyrotech:material:35> * 2, 0.1)	
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
.setSecondaryIngredients([<minecraft:clay_ball> * 6])
.setFluid(<liquid:water> * 500)
.addTool(<ore:artisansDriver>, 10)
.addTool(<ore:artisansTrowel>, 20)
.addTool(<ore:artisansChisel>, 25)
.setMaximumTier(2)
.setExtraOutputOne(<pyrotech:material:17> * 5, 0.4)
.setExtraOutputTwo(<pyrotech:material:7> * 3, 0.5)	
.setExtraOutputThree(<pyrotech:rock:5> * 6, 0.1)	
.addOutput(<immersiveengineering:stone_decoration:10> * 3)
.create();
  
RecipeBuilder.get("potter")
.setShaped([
    [<ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>],
    [<pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>],
    [<ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>],
    [<pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>],
    [<ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>]])
.setSecondaryIngredients([<minecraft:clay_ball> * 9])
.setFluid(<liquid:coal_tar> * 1000)	
.setLevelRequired(10)
.setConsumeExperience(false)
.addTool(<ore:artisansDriver>, 20)
.addTool(<ore:artisansTrowel>, 25)
.addTool(<ore:artisansChisel>, 30)
.setMaximumTier(2)
.setExtraOutputOne(<pyrotech:material:17> * 6, 0.3)	 
.setExtraOutputTwo(<pyrotech:material:7> * 2, 0.6)	
.setExtraOutputThree(<pyrotech:rock:5> * 5, 0.1)
.addOutput(<immersiveengineering:stone_decoration:1> * 3)
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
.setSecondaryIngredients([<minecraft:clay_ball> * 6])
.setFluid(<liquid:coal_tar> * 500)	
.addTool(<ore:artisansDriver>, 15)
.addTool(<ore:artisansTrowel>, 20)
.addTool(<ore:artisansChisel>, 25)
.setMaximumTier(2)
.setExtraOutputOne(<pyrotech:material:17> * 4, 0.2)	 
.setExtraOutputTwo(<pyrotech:material:7> * 2, 0.5)	
.setExtraOutputThree(<pyrotech:material:4> * 4, 0.3)	
.addOutput(<immersiveengineering:stone_decoration> * 3)
.create();

var bricks = [
<minecraft:stone_slab:4>,
<pyrotech:refractory_brick_block>,
<pyrotech:masonry_brick_block>,
<pyrotech:masonry_brick_stairs>,
<pyrotech:refractory_brick_stairs>,
<pyrotech:refractory_brick_slab>,
<pyrotech:masonry_brick_wall>,
<pyrotech:refractory_brick_wall>,
<minecraft:brick_block>,
<minecraft:stone_slab:5>,
<minecraft:stone_slab:3>,
<minecraft:stone_slab:6>,
<minecraft:stone_slab:7>,
<minecraft:brick_block>,
<minecraft:stone_stairs>,
<minecraft:stonebrick>,
<minecraft:stonebrick:3>,
<minecraft:brick_stairs>,
<minecraft:stone_brick_stairs>,
<minecraft:nether_brick_stairs>,
<minecraft:nether_brick>,
<minecraft:quartz_stairs>,
<minecraft:quartz_block:2>,
<minecraft:quartz_block:1>,
<minecraft:end_bricks>,
<minecraft:purpur_block>,
<minecraft:purpur_pillar>,
<minecraft:purpur_stairs>,
<minecraft:purpur_slab>,
<minecraft:red_nether_brick>,
<futuremc:brick_wall>,
<futuremc:granite_wall>,
<futuremc:andesite_wall>,
<futuremc:diorite_wall>,
<futuremc:sandstone_wall>,
<futuremc:red_sandstone_wall>,
<futuremc:stone_brick_wall>,
<futuremc:mossy_stone_brick_wall>,
<futuremc:nether_brick_wall>,
<futuremc:red_nether_brick_wall>,
<futuremc:end_stone_brick_wall>,
<futuremc:prismarine_wall>,
<minecraft:mossy_cobblestone>,
<minecraft:stonebrick:1>,
<tconstruct:seared_tank>,
<tconstruct:smeltery_controller>,
<tconstruct:smeltery_io>
] as IItemStack[];

for brick in bricks {
    RecipeBuilder.get("potter")
    .setCopy(
            Copy.byOutput([brick]).runAfter())
    .setLevelRequired(5)
    .setConsumeExperience(false)
    .addTool(<ore:artisansTrowel>, 3)
    .addTool(<ore:artisansChisel>, 5)
    .create();
}

val tcom = loadedMods["tcomplement"];

for item in tcom.items {
    RecipeBuilder.get("potter")
    .setCopy(
            Copy.byOutput([item]).runAfter())
    .setLevelRequired(10)
    .setConsumeExperience(false)
    .addTool(<ore:artisansTrowel>, 3)
    .addTool(<ore:artisansChisel>, 5)
    .create();
}
  
RecipeBuilder.get("basic")
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

RecipeBuilder.get("basic")
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

RecipeBuilder.get("engineer")
 .setShaped([
    [<immersiveengineering:material:24>, <immersiveengineering:material:25>, <immersiveengineering:material:24>, <immersiveengineering:material:25>, <immersiveengineering:material:24>],
    [<immersiveengineering:material:25>, <immersiveengineering:material:24>, <minecraft:coal:1>, <immersiveengineering:material:24>, <immersiveengineering:material:25>],
    [<immersiveengineering:material:24>, <minecraft:coal:1>, <immersiveengineering:material:24>, <minecraft:coal:1>, <immersiveengineering:material:24>],
    [<immersiveengineering:material:25>, <immersiveengineering:material:24>, <minecraft:coal:1>, <immersiveengineering:material:24>, <immersiveengineering:material:25>],
    [<immersiveengineering:material:24>, <immersiveengineering:material:25>, <immersiveengineering:material:24>, <immersiveengineering:material:25>, <immersiveengineering:material:24>]])
.setName("gunpowder")
.setLevelRequired(15)
.setConsumeExperience(false)
.setMaximumTier(2)
.addTool(<ore:artisansBeaker>, 10)
.addTool(<ore:artisansSifter>, 5)
.addTool(<ore:artisansMortar>, 10)
.setExtraOutputOne(<pyrotech:material:21> * 3, 0.8)	 
.setExtraOutputTwo(<immersiveengineering:material:25>, 0.1)	
.setExtraOutputThree(<immersiveengineering:material:24>, 0.1)
.addOutput(<minecraft:gunpowder> * 16)
.create();

RecipeBuilder.get("basic")
.setCopy(
        Copy.byOutput([<sanity:umbrella>]).runAfter())
.setName("umbrella")
.setLevelRequired(5)
.setConsumeExperience(false)
.addTool(<ore:artisansPunch>, 10)
.addTool(<ore:artisansShears>, 15)
.setExtraOutputOne(<minecraft:leather>, 0.2)	 
.setExtraOutputTwo(<pyrotech:rock:7> * 5, 0.8)	
.create();

RecipeBuilder.get("basic")
.setShaped([
    [<ore:wool>, <pyrotech:material:43>, <ore:wool>],
    [<pyrotech:material:43>, <pyrotech:material:42>, <pyrotech:material:43>],
    [<ore:wool>, <pyrotech:material:43>, <ore:wool>]])
.setName("smallbag")
.setLevelRequired(5)
.setConsumeExperience(false)
.setSecondaryIngredients([<ore:string> * 4, <pyrotech:material:44> * 2])  
.setExtraOutputOne(<minecraft:leather>, 0.1)	 
.setExtraOutputTwo(<minecraft:string> * 2, 0.9)	
.addTool(<ercore:bag_blueprint>, 2)
.addTool(<ore:artisansPunch>, 10)
.addOutput(<usefulbackpacks:backpack>)
.create();

RecipeBuilder.get("basic")
.setShaped([
    [<pyrotech:material:43>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:material:43>],
    [<pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:material:42>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>],
    [<pyrotech:wool_tarred>, <pyrotech:material:42>, <usefulbackpacks:backpack>, <pyrotech:material:42>, <pyrotech:wool_tarred>],
    [<pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:material:42>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>],
    [<pyrotech:material:43>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:material:43>]])
.setName("midbag")
.setLevelRequired(10)
.setConsumeExperience(false)
.setSecondaryIngredients([<ore:string> * 6, <pyrotech:material:44> * 4])  
.setExtraOutputOne(<minecraft:leather> * 4, 0.2)	 
.setExtraOutputTwo(<minecraft:string> * 3, 0.4)
.setExtraOutputThree(<minecraft:feather> * 2, 0.4)  
.addTool(<ore:artisansGroover>, 15)
.addTool(<ercore:bag_blueprint>, 2)
.addTool(<ore:artisansShears>, 20)
.addOutput(<usefulbackpacks:backpack:1>)
.create();

RecipeBuilder.get("basic")
.setShaped([
    [<pyrotech:material:43>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:material:43>],
    [<pyrotech:wool_tarred>, <pyrotech:material:42>, <pyrotech:wool_tarred>, <pyrotech:material:42>, <pyrotech:wool_tarred>],
    [<pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <usefulbackpacks:backpack:1>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>],
    [<pyrotech:wool_tarred>, <pyrotech:material:42>, <pyrotech:wool_tarred>, <pyrotech:material:42>, <pyrotech:wool_tarred>],
    [<pyrotech:material:43>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:material:43>]])
.setName("largebag")
.setLevelRequired(15)
.setConsumeExperience(false)
.setSecondaryIngredients([<ore:string> * 8, <pyrotech:material:44> * 8])  
.setExtraOutputOne(<minecraft:leather> * 2, 0.3)	 
.setExtraOutputTwo(<minecraft:string> * 4, 0.5)
.setExtraOutputThree(<minecraft:feather> * 6, 0.2)  
.addTool(<ercore:bag_blueprint>, 2)
.addTool(<ore:artisansNeedle>, 25)
.addTool(<ore:artisansPunch>, 30)  
.addOutput(<usefulbackpacks:backpack:2>)
.create();

for recipe in recipes.getRecipesFor(<ore:artisansTool>) {
RecipeBuilder.get("basic")
.setCopy(Copy.byRecipe(recipe))
.setLevelRequired(3)
.setConsumeExperience(false)
.addTool(<ercore:tool_blueprint>, 2)
.setSecondaryIngredients([<pyrotech:chopping_block>])
.setConsumeSecondaryIngredients(false)
.setExtraOutputOne(<pyrotech:rock:7>, 0.8)	 
.setExtraOutputTwo(<pyrotech:rock:7> * 2, 0.2)	
.create();
}

function awBasicShaped(name as string, output as IItemStack, input as IOreDictEntry){
RecipeBuilder.get("basic")
 .setShaped([
    [input, input, input],
    [input, input, input],
    [input, input, input]])
 .addOutput(output)
 .addTool(<ore:artisansHammer>, 10)
 .setFluid(<liquid:lava> * 100)
 .create();
}

function awBasicShapeless(name as string, output as IItemStack, input as IOreDictEntry, mount as int){
RecipeBuilder.get("basic")
 .setShapeless([input])
 .addOutput(output * mount)
 .addTool(<ore:artisansHammer>, 10)
 .create();
}

awBasicShaped("iron_block_from_ingot", <minecraft:iron_block>, <ore:ingotIron>);
awBasicShaped("gold_block_from_ingot", <minecraft:gold_block>, <ore:ingotGold>);
awBasicShaped("diamond_block_from_diamond", <minecraft:diamond_block>, <ore:gemDiamond>);
awBasicShaped("emerald_block_from_emerald", <minecraft:emerald_block>, <ore:gemEmerald>);
awBasicShaped("slime_block_from_slimeball", <minecraft:slime>, <ore:slimeball>);
awBasicShaped("soil_from_cement_powder", <tconstruct:soil>, <ore:powderCement>);
awBasicShaped("steel_block_from_ingot", <immersiveengineering:storage:8>, <ore:ingotSteel>);
awBasicShaped("quartz_block_from_ingot", <minecraft:quartz_block>, <ore:gemQuartz>);
awBasicShaped("copper_block_from_ingot", <galacticraftcore:basic_block_core:9>, <ore:ingotCopper>);
awBasicShaped("cobalt_block_from_ingot", <tconstruct:metal>, <ore:ingotCobalt>);
awBasicShaped("ardite_block_from_ingot", <tconstruct:metal:1>, <ore:blockArdite>);
awBasicShaped("manyullyn_block_from_ingot", <tconstruct:metal:2>, <ore:blockManyullyn>);
awBasicShaped("knightslime_block_from_ingot", <tconstruct:metal:3>, <ore:blockKnightslime>);
awBasicShaped("alubrass_block_from_ingot", <tconstruct:metal:5>, <ore:blockAlubrass>);
awBasicShaped("Electrum_block_from_ingot", <immersiveengineering:storage:7>, <ore:ingotElectrum>);
awBasicShaped("constantan_block_from_ingot", <immersiveengineering:storage:6>, <ore:blockConstantan>);
awBasicShaped("nickel_block_from_ingot", <immersiveengineering:storage:4>, <ore:blockNickel>);
awBasicShaped("silver_block_from_ingot", <immersiveengineering:storage:3>, <ore:blockSilver>);
awBasicShaped("uranium_block_from_ingot", <immersiveengineering:storage:5>, <ore:blockUranium>);
awBasicShaped("lead_block_from_ingot", <immersiveengineering:storage:2>, <ore:ingotLead>);

awBasicShapeless("nugget_from_ingot_aluminum", <immersiveengineering:metal:21>, <ore:ingotAluminum>, 9);
awBasicShapeless("nugget_from_ingot_lead", <immersiveengineering:metal:22>, <ore:ingotLead>, 9);
awBasicShapeless("nugget_from_ingot_silver", <immersiveengineering:metal:24>, <ore:ingotSilver>, 9);
awBasicShapeless("nugget_from_ingot_nickel", <immersiveengineering:metal:23>, <ore:ingotNickel>, 9);
awBasicShapeless("nugget_from_ingot_uranium", <immersiveengineering:metal:25>, <ore:ingotUranium>, 9);
awBasicShapeless("nugget_from_ingot_constantan", <immersiveengineering:metal:26>, <ore:ingotConstantan>, 9);
awBasicShapeless("nugget_from_ingot_electrum", <immersiveengineering:metal:27>, <ore:ingotElectrum>, 9);
awBasicShapeless("nugget_from_ingot_cobalt", <tconstruct:nuggets>, <ore:ingotCobalt>, 9);
awBasicShapeless("nugget_from_ingot_ardite", <tconstruct:nuggets:1>, <ore:ingotArdite>, 9);
awBasicShapeless("nugget_from_ingot_manyullyn", <tconstruct:nuggets:2>, <ore:ingotManyullyn>, 9);
awBasicShapeless("nugget_from_ingot_knightslime", <tconstruct:nuggets:3>, <ore:ingotKnightslime>, 9);
awBasicShapeless("nugget_from_ingot_alubrass", <tconstruct:nuggets:5>, <ore:ingotAlubrass>, 9);
awBasicShapeless("nugget_from_ingot_gold", <minecraft:gold_nugget>, <ore:ingotGold>, 9);
awBasicShapeless("nugget_from_ingot_copper", <immersiveengineering:metal:20>, <ore:ingotCopper>, 9);
awBasicShapeless("nugget_from_ingot_tin", <ercore:tin_nugget>, <ore:ingotTin>, 9);
awBasicShapeless("copper_plate_from_block", <immersiveengineering:metal:30>, <ore:blockCopper>, 3);
awBasicShapeless("gold_plate_from_block", <immersiveengineering:metal:40>, <ore:blockGold>, 3);

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
<biomesoplenty:planks_0:12>,
<biomesoplenty:planks_0:14>,
<biomesoplenty:planks_0:7>,
<biomesoplenty:planks_0:9>,
<biomesoplenty:planks_0:6>
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
<mctb:jacaranda_crafting_table>,
<mctb:ebony_crafting_table>,
<mctb:palm_crafting_table>,
<mctb:willow_crafting_table>,
<mctb:mangrove_crafting_table>
] as IItemStack[];

for i, wood in woods {
val table = tables[i];

<ore:craftingTable>.add(table);
recipes.remove(table);

RecipeBuilder.get("engineer")
.setShaped([
    [<ore:plateCopper>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateCopper>],
    [wood, <ore:ingotTungsten>, <pyrotech:crate_stone>, <ore:ingotTungsten>, wood],
    [wood, <ore:plankTreatedWood>, <pyrotech:anvil_iron_plated>, <ore:plankTreatedWood>, wood],
    [wood, <ore:blockIron>, <ore:blockGold>, <ore:blockIron>, wood],
    [wood, <ore:stoneBasaltPolished>, <ore:stoneBasaltPolished>, <ore:stoneBasaltPolished>, wood]])
.setLevelRequired(30)
.setFluid(<liquid:lava> * 1000)
.setMaximumTier(2)
.setExtraOutputOne(<minecraft:iron_nugget> * 5, 0.5)
.setExtraOutputTwo(<pyrotech:rock:7> * 8, 0.3)	
.setExtraOutputThree(<immersiveengineering:metal:28> * 2, 0.2)	
.addTool(<ore:artisansTSquare>, 35)  
.addTool(<ercore:crafting_table_blueprint>, 2)
.addTool(<ore:artisansCarver>, 30) 
.setSecondaryIngredients([<pyrotech:crafting_table_template>])
.addOutput(table)
.create();
}

RecipeBuilder.get("engineer")
.setShaped([
    [<ore:stickStone>, null, <ore:stickStone>],
    [null, <ore:rodBlaze>, null],
    [<pyrotech:masonry_brick_block>, <ore:blockSteel>, <pyrotech:masonry_brick_block>]])
.setName("brewing_stand")
.setLevelRequired(10)
.addTool(<ore:artisansLens>, 20)
.addTool(<ercore:brewing_stand_blueprint>, 2)
.setExtraOutputOne(<pyrotech:material:16>, 0.6)	 
.setExtraOutputTwo(<immersiveengineering:metal:28> * 5, 0.4)
.addOutput(<minecraft:brewing_stand>)
.create();

RecipeBuilder.get("engineer")
.setShaped([
    [<ore:cobblestone>, <botania:petal:*>, <botania:mushroom:*>, <botania:petal:*>, <ore:cobblestone>],
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
    [null, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, null],
    [null, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, null],
    [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]])
.setName("petal_apothecary")
.setLevelRequired(10)
.setMaximumTier(2)
.setExtraOutputOne(<minecraft:dye:4> * 4, 0.2)	 
.setExtraOutputTwo(<pyrotech:rock> * 3, 0.2)	
.setExtraOutputThree(<minecraft:stone_slab:3> * 1, 0.6)	 
.addTool(<ore:artisansGrimoire>, 20)
.addTool(<ore:artisansAthame>, 15)
.addTool(<ercore:altar_blueprint>, 2)
.addOutput(<botania:altar>)
.create();

RecipeBuilder.get("engineer")
.setShaped([
    [null, null, null, null, null],
    [<ore:livingrock>, <ore:powderMana>, <ore:manaPearl>, <ore:powderMana>, <ore:livingrock>],
    [<ore:livingrock>, <ore:livingrock>, <botania:storage>, <ore:livingrock>, <ore:livingrock>],
    [null, <ore:livingrock>, <ore:livingrock>, <ore:livingrock>, null],
    [null, <ore:livingrock>, <ore:livingrock>, <ore:livingrock>, null]])
.setName("runealtar")
.setLevelRequired(10)
.setMaximumTier(2)
.setExtraOutputOne(<botania:manaresource:17> * 6, 0.4)	 
.setExtraOutputTwo(<botania:manaresource> * 3, 0.1)	
.setExtraOutputThree(<botania:livingrock0slab> * 2, 0.5)	 
.addTool(<ore:artisansGrimoire>, 15)
.addTool(<ore:artisansAthame>, 25)
.addTool(<ercore:altar_blueprint>, 2)
.addOutput(<botania:runealtar>)
.create();

RecipeBuilder.get("engineer")
.setShaped([
    [<ore:livingrock>, <ore:runeManaB>, <minecraft:brewing_stand>, <ore:runeManaB>, <ore:livingrock>],
    [<ore:runeManaB>, <ore:livingrock>, <botania:storage>, <ore:livingrock>, <ore:runeManaB>],
    [<ore:livingrock>, <ore:runeManaB>, <ore:livingrock>, <ore:runeManaB>, <ore:livingrock>],
    [null, <ore:livingrock>, <ore:livingrock>, <ore:livingrock>, null],
    [null, <ore:livingrock>, <ore:livingrock>, <ore:livingrock>, null]])
.setName("brewery")
.setLevelRequired(15)
.setMaximumTier(2)
.addTool(<ore:artisansChisel>, 15)
.addTool(<ercore:brewing_stand_blueprint>, 2)
.addTool(<ore:artisansHammer>, 30)
.setExtraOutputOne(<minecraft:blaze_powder> * 2, 0.2)	 
.setExtraOutputTwo(<botania:manaresource>, 0.6)	
.setExtraOutputThree(<immersiveengineering:metal:28> * 6, 0.2)
.addOutput(<botania:brewery>)
.create();

val imme = loadedMods["immersiveengineering"];

for item in imme.items {
    RecipeBuilder.get("engineer")
    .setCopy(
            Copy.byOutput([item]).runAfter())
    .setLevelRequired(10)
    .setConsumeExperience(false)
    .addTool(<ore:artisansDriver>, 6)
    .addTool(<ore:artisansSpanner>, 14)
    .create();
}

val bota = loadedMods["botania"];

for item in bota.items {
    RecipeBuilder.get("engineer")
    .setCopy(
            Copy.byOutput([item]).runAfter())
    .setLevelRequired(10)
    .setConsumeExperience(false)
    .addTool(<ore:artisansHammer>, 12)
    .addTool(<ore:artisansGrimoire>, 3)
    .create();
}