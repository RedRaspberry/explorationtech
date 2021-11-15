import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

recipes.remove(<minecraft:gunpowder>);

recipes.addShapeless("gunpowder", <minecraft:gunpowder> * 3,
  [<ore:dustSulfur>, <ore:dustSaltpeter>, <ore:dustCoal> | <ore:dustCharcoal>]);
