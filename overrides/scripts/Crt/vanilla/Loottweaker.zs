#
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;

var box = LootTweaker.getTable("minecraft:chests/abandoned_mineshaft");
var box_extra = box.addPool("box_extra", 0, 1, 0, 0);

var box1 = LootTweaker.getTable("minecraft:chests/end_city_treasure");
var box_extra1 = box1.addPool("box_extra1", 0, 1, 0, 0);

var box2 = LootTweaker.getTable("minecraft:chests/igloo_chest");
var box_extra2 = box2.addPool("box_extra2", 0, 1, 0, 0);

var box3 = LootTweaker.getTable("minecraft:chests/jungle_temple");
var box_extra3 = box3.addPool("box_extra3", 0, 1, 0, 0);

var box4 = LootTweaker.getTable("minecraft:chests/jungle_temple_dispenser");
var box_extra4 = box4.addPool("box_extra4", 0, 1, 0, 0);

var box5 = LootTweaker.getTable("minecraft:chests/nether_bridge");
var box_extra5 = box5.addPool("box_extra5", 0, 1, 0, 0);

var box6 = LootTweaker.getTable("minecraft:chests/simple_dungeon");
var box_extra6 = box6.addPool("box_extra6", 0, 1, 0, 0);

var box7 = LootTweaker.getTable("minecraft:chests/spawn_bonus_chest");
var box_extra7 = box7.addPool("box_extra7", 0, 1, 0, 0);

var box8 = LootTweaker.getTable("minecraft:chests/stronghold_corridor");
var box_extra8 = box8.addPool("box_extra8", 0, 1, 0, 0);

var box9 = LootTweaker.getTable("minecraft:chests/stronghold_crossing");
var box_extra9 = box9.addPool("box_extra9", 0, 1, 0, 0);

var box10 = LootTweaker.getTable("minecraft:chests/stronghold_library");
var box_extra10 = box10.addPool("box_extra10", 0, 1, 0, 0);

var box11 = LootTweaker.getTable("minecraft:chests/village_blacksmith");
var box_extra11 = box11.addPool("box_extra11", 0, 1, 0, 0);

var box12 = LootTweaker.getTable("minecraft:chests/woodland_mansion");
var box_extra12 = box12.addPool("box_extra12", 0, 1, 0, 0);

for item in <ore:blueprint>.items {
box_extra.addItemEntry(item,1);
box_extra1.addItemEntry(item,1);
box_extra2.addItemEntry(item,1);
box_extra3.addItemEntry(item,1);
box_extra4.addItemEntry(item,1);
box_extra5.addItemEntry(item,1);
box_extra6.addItemEntry(item,1);
box_extra7.addItemEntry(item,1);
box_extra8.addItemEntry(item,1);
box_extra9.addItemEntry(item,1);
box_extra10.addItemEntry(item,1);
box_extra11.addItemEntry(item,1);
box_extra12.addItemEntry(item,1);
}

var creeper = LootTweaker.getTable("minecraft:entities/creeper");
var creeper_extra = creeper.addPool("creeper_extra", 1, 2, 0, 0);
creeper_extra.addItemEntry(<immersiveengineering:material:25>, 1);