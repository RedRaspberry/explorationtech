import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

recipes.remove(<minecraft:gunpowder>);

recipes.addShapeless("ct_gunpowder", <minecraft:gunpowder> * 3,
  [<ore:dustSulfur>, <ore:dustSaltpeter>, <ore:dustCoal> | <ore:dustCharcoal>]);

#recipes.addShaped("ct_reliquary_gunpower", <xreliquary:)
