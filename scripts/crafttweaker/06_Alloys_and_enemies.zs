import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

import mods.enderio.AlloySmelter as alloy_eio;
import mods.immersiveengineering.AlloySmelter as alloy_ie_basic;
import mods.immersiveengineering.ArcFurnace as alloy_ie_advanced;
import mods.tconstruct.Alloy as smeltery;
import mods.thermalexpansion.InductionSmelter;
import mods.tcomplement.highoven.HighOven;

import mods.industrialforegoing.FluidSievingMachine as sieve;

#furnace.addRecipe(IItemStack output, IIngredient input);

#example
alloy_eio.removeRecipe(<thermalfoundation:material:163> * 4);
#alloy_eio.addRecipe(<ore:ingotBronze>.firstItem, [<ore:ingotCopper>*3|<ore:dustCopper>*3, <ore:ingotTin>|<ore:dustTin>]);
