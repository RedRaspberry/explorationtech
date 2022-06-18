import mods.tconstruct.Alloy;
import mods.enderio.AlloySmelter;

mods.tconstruct.Alloy.addRecipe(<liquid:netherite> * 144, [<liquid:gold> * 576, <liquid:ancient_debris> * 576]);

recipes.removeByRecipeName("futuremc:netherite_ingot");
recipes.addShapeless("ct_netheritedust", <ore:dustNetherite>.firstItem, [<ore:dustAncientDebris>, <ore:dustAncientDebris>, <ore:dustAncientDebris>, <ore:dustAncientDebris>, <ore:dustGold>, <ore:dustGold>, <ore:dustGold>, <ore:dustGold>]);

#mods.enderio.AlloySmelter.addRecipe(IItemStack output, IIngredient[] input, @Optional int energyCost, @Optional float xp)
mods.enderio.AlloySmelter.addRecipe(<ore:ingotNetherite>.firstItem, [<ore:ingotGold> * 4, <ore:ingotAncientDebris> * 4], 10000);

<jaopca:item_dustancientdebris>.displayName = "Netherite Scrap Dust";
