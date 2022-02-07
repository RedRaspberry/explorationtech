import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.hide;
import crafttweaker.item.IItemStack;

#removes all crafting recipes that use the immersive hammer to make metal plates, use MGC crushing table instead
var plateRemoval = [<ore:plateElectrum>,
                  <ore:plateAluminum>,
                  <ore:plateLead>,
                  <ore:plateNickel>,
                  <ore:plateUranium>,
                  <ore:plateSilver>,
                  <ore:plateCopper>,
                  <ore:plateSteel>,
                  <ore:plateGold>,
                  <ore:plateBrass>,
                  <ore:plateIron>,
                  <ore:plateConstantan>,
                  <ore:plateThaumium>,
                  <ore:plateVoid>
                  ] as IIngredient[];

for item in plateRemoval {
  recipes.removeShapeless(item, [<immersiveengineering:tool:0>]);
  }
