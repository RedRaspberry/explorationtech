import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

#hydrated tin dust- this makes ZERO sense in any way. good riddance
recipes.remove(<ic2:dust:29>);

#coil
recipes.addShaped("ct_ic2_wirespool_from_ie", <ic2:crafting:5>, [
[<immersiveengineering:material:20>, <immersiveengineering:material:20>, <immersiveengineering:material:20>],
[<immersiveengineering:material:20>, <minecraft:iron_ingot>, <immersiveengineering:material:20>],
[<immersiveengineering:material:20>, <immersiveengineering:material:20>, <immersiveengineering:material:20>]
]);
