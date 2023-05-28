#ignoreBracketErrors
#sideonly server
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

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
var player = event.player as IPlayer;
var ser = server.commandManager as ICommandManager;
player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.login.hello"));
    if (!player.hasGameStage("master")) {
        ser.executeCommand(server, "gamestage silentadd " + event.player.name + " master");
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
});

events.onPlayerRespawn(function(event as PlayerRespawnEvent) {
    val player as IPlayer = event.player;
    player.executeCommand("pay " + player.name + " 1");
    player.addPotionEffect(<potion:minecraft:invisibility>.makePotionEffect(12000, 5));
	player.addPotionEffect(<potion:minecraft:night_vision>.makePotionEffect(6000, 5));
	if (rebornhunger != false) {
    player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(400, 1));
    }
  }
);

<minecraft:stick>.withTag({ench: [{lvl: 5 as short, id: 19 as short}], RepairCost: 1}).addTooltip(game.localize("crafttweaker.stick.tooltip"));

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