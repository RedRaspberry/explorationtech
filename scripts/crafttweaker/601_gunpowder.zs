import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.ic2.Extractor;
import mods.immersiveengineering.Squeezer;

recipes.remove(<minecraft:gunpowder>);

recipes.addShapeless("ct_gunpowder", <minecraft:gunpowder> * 3,
  [<ore:dustSulfur>, <ore:dustSaltpeter>, <ore:dustCoal> | <ore:dustCharcoal>]);

recipes.addShapeless("ct_reliquary_gunpower", <minecraft:gunpowder> * 2, [<xreliquary:mob_ingredient:3>]);

mods.ic2.Extractor.addRecipe(<minecraft:gunpowder> * 4, <xreliquary:mob_ingredient:3>);
mods.immersiveengineering.Squeezer.addRecipe(<minecraft:gunpowder> * 6, <liquid:blood> * 30, <xreliquary:mob_ingredient:3>, 2400);
