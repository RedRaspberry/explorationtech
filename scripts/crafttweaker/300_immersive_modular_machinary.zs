import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import mods.immersiveengineering.Blueprint;

#I wanted a gear block, don't worry about it
recipes.addShaped("mech_engineering_block", <contenttweaker:mech_engineering_block>, [
[<minecraft:iron_ingot>, <immersiveengineering:material:8>, <minecraft:iron_ingot>],
[<minecraft:redstone>, <thermalfoundation:material:24>, <minecraft:redstone>],
[<minecraft:iron_ingot>, <immersiveengineering:material:8>, <minecraft:iron_ingot>]]);

#removes existing press molds for rod and wire
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:mold:2>);
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:mold:4>);
