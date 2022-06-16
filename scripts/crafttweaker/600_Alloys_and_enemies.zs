import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.tconstruct.Alloy;
import mods.thermalexpansion.InductionSmelter;
import mods.tcomplement.highoven.HighOven;
import mods.industrialforegoing.FluidSievingMachine;

val copper = <ore:ingotCopper> * 3 |<ore:dustCopper> * 3;
val tin = <ore:ingotTin> | <ore:dustTin>;
mods.enderio.AlloySmelter.removeRecipe(<thermalfoundation:material:163>);
mods.enderio.AlloySmelter.addRecipe(<ore:ingotBronze>.firstItem, [copper, tin]);
