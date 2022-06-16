import mods.tconstruct.Alloy;
import mods.enderio.AlloySmelter;

mods.tconstruct.Alloy.addRecipe(<liquid:netherite> * 144, [<liquid:gold> * 576, <liquid:ancient_debris> * 576]);

recipes.addShapeless(<ore:dustNetherite>.firstItem, [<ore:dustAncientDebris>, <ore:dustGold>]);

#mods.enderio.AlloySmelter.addRecipe(IItemStack output, IIngredient[] input, @Optional int energyCost, @Optional float xp)
mods.enderio.AlloySmelter.addRecipe(<ore:ingotNetherite>.firstItem, [<ore:dustGold> * 4 | <ore:ingotGold> * 4, <ore:dustAncientDebris> * 4 | <ore:ingotAncientDebris> * 4], 10000);
