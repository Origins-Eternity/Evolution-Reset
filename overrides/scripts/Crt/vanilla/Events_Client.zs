#sideonly client
#ignoreBracketErrors
import crafttweaker.event.PlayerCraftedEvent;
import crafttweaker.events.IEventManager;
import crafttweaker.event.CommandEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.command.ICommandManager;
import crafttweaker.text.ITextComponent;
import crafttweaker.event.PlayerChangedDimensionEvent;
import crafttweaker.world.IWorldInfo;
import crafttweaker.event.PlayerSleepInBedEvent;
import crafttweaker.recipes.ICraftingRecipe;
import crafttweaker.event.BlockBreakEvent;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.world.IWorld;
import crafttweaker.event.PlayerInteractEntityEvent;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.event.PlayerInteractBlockEvent;

var names as string[] = [
"crafting_table",
"bed",
"furnace"
];

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
var id = event.block.definition.id;
var player = event.player;
for name in names {
    if (id.contains(name)) {
        if (!player.hasGameStage(name)) {
            if (isNull(event.player.data.wasGivenTipStage)) {
                if (!event.world.isRemote()) {
                    player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.lack.stage"));
                }
                event.player.update({wasGivenTipStage: true});
            }
            event.cancel();
        }
    }
}});

var stages as string[] = [
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "oreexacavator",
    "bed",
    "chest",
    "piston",
    "crafting_table"
];

events.onPlayerInteractEntity(function(event as PlayerInteractEntityEvent) {
if (event.target instanceof IPlayer) {
    var current = event.player.currentItem;
    if (!isNull(current) && current.name == "item.writingBook") {
        var target as IPlayer = event.target;
        if (isNull(event.player.data.wasGivenTipGive)) {
            if (!event.world.isRemote()) {
                event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.give.stage"));
            }
            event.player.update({wasGivenTipGive: true});
        }
        if (isNull(target.data.wasGivenTipAccept)) {
            if (!event.world.isRemote()) {
                target.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.accept.stage"));
            }
            target.update({wasGivenTipAccept: true});
        }
        for stage in stages {
            if (event.player.hasGameStage(stage)) {
                if(!target.hasGameStage(stage)) {
                   var ser = server.commandManager as ICommandManager;
                   ser.executeCommand(server, "gamestage silentadd " + target.name + " " + stage);
                   event.player.xp += 1;
                }
            }
        }
    }
} else {
var entity = event.target.definition.id;
if (entity == <entity:minecraft:villager>.id) {
    event.cancel();
}
}
});

var InvalidMods as string[] = [
    "xijun",
    "bacteria",
    "decomp_table",
    "deconstrcution_table",
    "decon_table",
    "decontable",
    "decon",
    "uncraftingtable",
    "deconstruction",
    "avaritia",
    "xray",
    "oreping",
    "reinforcedtools",
    "scenter",
    "extrabotany",
    "oresniffer",
    "eplus",
    "stm",
    "ISM",
    "cycle",
    "eplus",
    "somanyenchantments",
    "randomenchantments"
];

if (modcheck != false) {
events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
var player = event.player as IPlayer;
var ser = server.commandManager as ICommandManager;
ser.executeCommand(server, "gamemode survival " + player.name);
if ((loadedMods.contains("firstaid")) && 
    (loadedMods.contains("hungeroverhaul")) && 
    (loadedMods.contains("scalinghealth")) && 
    (loadedMods.contains("zombieawareness")) && 
    (loadedMods.contains("adpother")) && 
    (loadedMods.contains("oeintegration")) && 
    (loadedMods.contains("sereneseasons")) && 
    (loadedMods.contains("toughasnails")) && 
    (loadedMods.contains("hardcoredarkness")) && 
    (loadedMods.contains("custommainmenu")))
    {
    player.update({RequiredMods: true});
    }
for mods in InvalidMods {
    if (loadedMods.contains(mods)) {
        player.update({InvalidMods: true});
    }
}
player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.login.begin"));
player.world.catenation().sleep(60).then(function(world, context){
player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.login.modloaded"));
}).start();
	if (isNull(player.data.RequiredMods)) {
        player.world.catenation().sleep(60).then(function(world, context){
        player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.login.modrequired"));
        }).start();
	    player.world.catenation().sleep(80).then(function(world, context){
          ser.executeCommand(server, "gamemode spectator " + player.name);
        }).start();
    } else {
            if (isNull(player.data.InvalidMods)) {
                if ((!player.hasGameStage("notlockdifficulty")) || (difficultydetect == false)) {
                    player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.login.hello"));
                    if (!player.hasGameStage("master")) {
                        if ((player.world.getWorldType() != "RTG") && (checkworldtype != false)) {
                            ser.executeCommand(server, "gamemode spectator " + player.name);
                            player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.worldtype.tip"));
                        } else {
                            ser.executeCommand(server, "gamestage silentadd " + player.name + " master");
                            var start = [
                                <minecraft:stick>.withTag({ench: [{lvl: 5 as short, id: 19 as short}], RepairCost: 1}),
                                <pyrotech:apple_baked>,
	                            <akashictome:tome>.withTag({"akashictome:data": {tconstruct: {id: "tconstruct:book", Count: 1 as byte, tag: {"akashictome:definedMod": "tconstruct"}, Damage: 0 as short}, botania: {id: "botania:lexicon", Count: 1 as byte, tag: {"akashictome:definedMod": "botania"}, Damage: 0 as short}, conarm: {id: "conarm:book", Count: 1 as byte, tag: {"akashictome:definedMod": "conarm"}, Damage: 0 as short}, ftbquests: {id: "ftbquests:book", Count: 1 as byte, tag: {"akashictome:definedMod": "ftbquests"}, Damage: 0 as short}, immersiveengineering: {id: "immersiveengineering:tool", Count: 1 as byte, tag: {"akashictome:definedMod": "immersiveengineering"}, Damage: 3 as short}, twilightforest: {id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "twilightforest", "patchouli:book": "twilightforest:guide"}, Damage: 0 as short}, valkyrielib: {id: "valkyrielib:guide", Count: 1 as byte, tag: {"akashictome:definedMod": "valkyrielib"}, Damage: 0 as short}, pyrotech: {id: "pyrotech:book", Count: 1 as byte, tag: {"akashictome:definedMod": "pyrotech"}, Damage: 0 as short}}})
                            ] as IItemStack[];
                            for i in start {
                                event.player.give(i);
	                        }
                            ser.executeCommand(server, "setmoney " + player.name + " 1");                     
                        }
                    }
                    if ((isNull(player.data.wasDifficultyLocked)) && (difficultydetect != false)) {
                         player.world.catenation().sleep(120).then(function(world, context){
                         player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.difficulty.tip"));
                         }).start();
                    }
                    } else {
                            player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.world.locked"));
                    }
            } else {
                player.world.catenation().sleep(80).then(function(world, context){
                player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.login.invalid"));
                }).start();
                player.world.catenation().sleep(100).then(function(world, context){
                ser.executeCommand(server, "gamemode spectator " + player.name);
                }).start();
            }
    }
});
} else {
events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
var player = event.player as IPlayer;
var ser = server.commandManager as ICommandManager;
if ((!player.hasGameStage("notlockdifficulty")) || (difficultydetect == false)) {
    if ((player.world.getWorldType() != "RTG") && (checkworldtype != false)) {
        ser.executeCommand(server, "gamemode spectator " + player.name);
        player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.worldtype.tip"));
    } else if (!player.hasGameStage("master")) {
        event.player.update({wasGivenStarters: true});
        var start = [
            <minecraft:stick>.withTag({ench: [{lvl: 5 as short, id: 19 as short}], RepairCost: 1}),
            <pyrotech:apple_baked>,
	        <akashictome:tome>.withTag({"akashictome:data": {tconstruct: {id: "tconstruct:book", Count: 1 as byte, tag: {"akashictome:definedMod": "tconstruct"}, Damage: 0 as short}, botania: {id: "botania:lexicon", Count: 1 as byte, tag: {"akashictome:definedMod": "botania"}, Damage: 0 as short}, conarm: {id: "conarm:book", Count: 1 as byte, tag: {"akashictome:definedMod": "conarm"}, Damage: 0 as short}, ftbquests: {id: "ftbquests:book", Count: 1 as byte, tag: {"akashictome:definedMod": "ftbquests"}, Damage: 0 as short}, immersiveengineering: {id: "immersiveengineering:tool", Count: 1 as byte, tag: {"akashictome:definedMod": "immersiveengineering"}, Damage: 3 as short}, twilightforest: {id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "twilightforest", "patchouli:book": "twilightforest:guide"}, Damage: 0 as short}, valkyrielib: {id: "valkyrielib:guide", Count: 1 as byte, tag: {"akashictome:definedMod": "valkyrielib"}, Damage: 0 as short}, pyrotech: {id: "pyrotech:book", Count: 1 as byte, tag: {"akashictome:definedMod": "pyrotech"}, Damage: 0 as short}}})
        ] as IItemStack[];
        for i in start {
            event.player.give(i);
	    }
        ser.executeCommand(server, "setmoney " + player.name + " 1");
        ser.executeCommand(server, "gamestage silentadd " + player.name + " master");                          
    }
} else {
    player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.world.locked"));
}});
}

events.onPlayerRespawn(function(event as PlayerRespawnEvent) {
    val player as IPlayer = event.player;
    player.executeCommand("pay " + player.name + " 1");
    player.addPotionEffect(<potion:minecraft:invisibility>.makePotionEffect(12000, 5));
	player.addPotionEffect(<potion:minecraft:night_vision>.makePotionEffect(6000, 5));
	if (rebornhunger != false) {
    player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(400, 1));
    }
    if ((isNull(player.data.wasDifficultyLocked)) && (difficultydetect != false)) {
    player.world.catenation().sleep(20).then(function(world, context){
        player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.difficulty.tip"));
    }).start();
  }
});

<minecraft:bread>.withTag({ench: [{lvl: 5 as short, id: 19 as short}], RepairCost: 1}).addTooltip(game.localize("crafttweaker.stick.tooltip"));

if (difficultydetect != false) {
events.onPlayerChangedDimension(function(event as PlayerChangedDimensionEvent) {
    var ser = server.commandManager as ICommandManager;
    event.player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(1000, 3)); 
    if (!event.player.hasGameStage("lockdifficulty")) {
    event.player.world.catenation().sleep(60).then(function(world, context){
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.login.difficulty"));
        }).start();
    event.player.world.catenation().sleep(300).then(function(world, context){
    var info = event.fromWorld.getWorldInfo();
    var Locked = info.isDifficultyLocked();
    var difficulty = info.getDifficulty();
    var info1 = event.toWorld.getWorldInfo();
    var Locked1 = info1.isDifficultyLocked();
    var difficulty1 = info1.getDifficulty();
    if ((Locked != true) || (Locked1 != true)) {
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.difficulty.choose"));
    }  
    if ((difficulty == "PEACEFUL" && Locked != true) || (difficulty1 == "PEACEFUL" && Locked1 != true)) {
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.difficulty.peaceful"));
    }
        }).start();
    event.player.world.catenation().sleep(320).then(function(world, context){ 
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.10"));
        }).start();
    event.player.world.catenation().sleep(340).then(function(world, context){ 
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.9"));
        }).start(); 
    event.player.world.catenation().sleep(360).then(function(world, context){ 
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.8"));
        }).start(); 
    event.player.world.catenation().sleep(380).then(function(world, context){ 
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.7"));
        }).start(); 
    event.player.world.catenation().sleep(400).then(function(world, context){ 
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.6"));
        }).start(); 
    event.player.world.catenation().sleep(420).then(function(world, context){ 
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.5"));
        }).start(); 
    event.player.world.catenation().sleep(440).then(function(world, context){ 
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.4"));
        }).start(); 
    event.player.world.catenation().sleep(460).then(function(world, context){ 
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.3"));
        }).start(); 
    event.player.world.catenation().sleep(480).then(function(world, context){ 
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.2"));
        }).start(); 
    event.player.world.catenation().sleep(500).then(function(world, context){ 
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.1"));
        }).start(); 
    event.player.world.catenation().sleep(520).then(function(world, context){
    var info2 = event.fromWorld.getWorldInfo();
    var Locked2 = info2.isDifficultyLocked();
    var difficulty2 = info2.getDifficulty();
    var info3 = event.toWorld.getWorldInfo();
    var Locked3 = info3.isDifficultyLocked();
    var difficulty3 = info3.getDifficulty();
    if ((Locked2 != false) && (difficulty2 != "PEACEFUL") && (Locked3 != false) && (difficulty3 != "PEACEFUL")) {
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.difficulty.locked"));
        ser.executeCommand(server, "gamestage silentadd " + event.player.name + " lockdifficulty");
    } else {
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.difficulty.notchoose")); 
        ser.executeCommand(server, "gamemode spectator " + event.player.name);
        ser.executeCommand(server, "gamestage silentadd " + event.player.name + " notlockdifficulty");
    }  
    }).start();
  }
});
}

events.onPlayerCrafted(function(event as PlayerCraftedEvent) {
    var ser = server.commandManager as ICommandManager;
	if ((isNull(event.player.data.wasGivenTip1)) && (event.output.definition.id == "pyrotech:anvil_granite")) {
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.craft.tip1"));
        event.player.update({wasGivenTip1: true});
    } else if ((isNull(event.player.data.wasGivenTip2)) && (event.output.definition.id == "pyrotech:bloomery")) {
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.craft.tip2"));
        event.player.update({wasGivenTip2: true});
    } else if ((isNull(event.player.data.wasGivenTip3)) && (event.output.definition.id == "artisanworktables:workstation:14")) {
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.craft.tip3"));
        event.player.update({wasGivenTip3: true});
    } else if ((isNull(event.player.data.wasGivenTip4)) && (event.output.definition.id == "pyrotech:brick_oven")) {
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.craft.tip4"));
        event.player.update({wasGivenTip4: true});
    } else if ((isNull(event.player.data.wasGivenTip5)) && (event.output.definition.id == "minecraft:obsidian")) {
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.craft.tip5"));
        event.player.update({wasGivenTip5: true});
    } else if ((isNull(event.player.data.wasGivenTip6)) && (event.output.definition.id == "botania:pool:2")) {
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.craft.tip6"));   
        event.player.update({wasGivenTip6: true});
    } else if ((isNull(event.player.data.wasGivenTip7)) && (event.output.definition.id == "pyrotech:brick_crucible")) {
        event.player.update({wasGivenTip7: true});
    } else if ((isNull(event.player.data.wasGivenTip8)) && (event.output.definition.id == "advancedrocketry:rocketbuilder")) {
        ser.executeCommand(server, "gamestage silentadd " + event.player.name + " five");
        event.player.update({wasGivenTip8: true});
        if (journeymapstages != false) { 
            event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.craft.tip7"));
        }
    }
    if (journeymapstages != false) { 
        if ((isNull(event.player.data.wasGivenTip9)) && (event.output.definition.id == "advancedrocketry:satelliteprimaryfunction:1")) {
            ser.executeCommand(server, "gamestage silentadd " + event.player.name + " six");
            event.player.update({wasGivenTip9: true});
        } else if ((isNull(event.player.data.wasGivenTip10)) && (event.output.definition.id == "advancedrocketry:satelliteprimaryfunction")) {
            ser.executeCommand(server, "gamestage silentadd " + event.player.name + " seven");
            event.player.update({wasGivenTip10: true});
        } else if ((isNull(event.player.data.wasGivenTip11)) && (event.output.definition.id == "advancedrocketry:beaconfinder")) {
            ser.executeCommand(server, "gamestage silentadd " + event.player.name + " eight");
            event.player.update({wasGivenTip11: true});
        } else if ((isNull(event.player.data.wasGivenTip12)) && (event.output.definition.id == "advancedrocketry:satelliteprimaryfunction:3")) {
            ser.executeCommand(server, "gamestage silentadd " + event.player.name + " nine");
            event.player.update({wasGivenTip12: true});
        }
    }
});

if (sleephunger != false) {
events.onPlayerSleepInBed(function(event as PlayerSleepInBedEvent) {
    val player as IPlayer = event.player;
	player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(200, 2));
});
}

if (disablecommand != false) {
events.onCommand(function(event as CommandEvent) {
   val command = event.command;
   if((command.name == "backup") || (command.name == "ct") || (command.name == "crafttweaker") || (command.name == "team") || (command.name == "pay")) {
       return;
   }
   else if (event.commandSender instanceof IPlayer) {
   val player as IPlayer = event.commandSender;
   player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.command.tip"));
   event.cancel(); 
   }
});
}

val blockstages = [
"chest",
"bed",
"piston",
"crafting_table"
] as string[];

events.onBlockBreak(function(event as BlockBreakEvent) {
val player as IPlayer = event.player;
val block as IBlock = event.block;
if(!player.creative) {
    for blockstage in blockstages {
        if (block.definition.id.contains(blockstage)) {
            if (!player.hasGameStage(blockstage)) {
                if (isNull(player.data.wasGivenTipBlock)) {
                    if (!event.world.isRemote()) {
                        player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.lack.stage"));
                    }
                    player.update({wasGivenTipBlock: true});
                }
                event.cancel();
            }
        }
    }
    if (forcetool != false) {
        if((block.definition.hardness >= 0.6) && (event.isPlayer != false)) {
            if(isNull(player.currentItem)) {
                if (isNull(player.data.wasGivenTipHand)) {
                    if (!event.world.isRemote()) {
                        player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.blockbreak.tip1"));
                    }
                    player.update({wasGivenTipHand: true});
                }
                player.addPotionEffect(<potion:tconstruct:dot>.makePotionEffect(20, 1));
                player.addPotionEffect(<potion:minecraft:mining_fatigue>.makePotionEffect(200, 1));
                event.cancel();
            } else {
                val name = player.currentItem.definition.id;
                if(name.contains("axe")) return;
                if(name.contains("shovel")) return;
                if(name.contains("hoe")) return;
                if(name.contains("sword")) return;
                if (isNull(player.data.wasGivenTipTool)) {
                    if (!event.world.isRemote()) {
                        player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.blockbreak.tip2"));
                    }
                    player.update({wasGivenTipTool: true});
                }
                event.cancel();
            }
        }
    }
}});