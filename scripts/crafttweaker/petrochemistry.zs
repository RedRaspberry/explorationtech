import mods.immersiveengineering.MetalPress;
import mods.thermalexpansion.Refinery;
import mods.immersivepetroleum.Distillation;
import mods.immersiveengineering.Mixer;
import mods.thermalexpansion.Compactor;

<ore:clathrateOil>.add(<immersivepetroleum:material>);
<ore:crystalCrudeOil>.add(<immersivepetroleum:material>);

furnace.remove(<industrialforegoing:plastic>);

//mods.immersiveengineering.MetalPress.addRecipe(IItemStack output, IIngredient input, IItemStack mold, int energy, @Optional int inputSize);
mods.immersiveengineering.MetalPress.addRecipe(<industrialforegoing:plastic>, <industrialforegoing:dryrubber>, <immersiveengineering:mold>, 2400);

mods.thermalexpansion.Compactor.addPressRecipe(<industrialforegoing:plastic>, <industrialforegoing:dryrubber>, 2400);

<industrialforegoing:plastic>.displayName = "Dry Rubber Sheet";

furnace.addRecipe(<industrialforegoing:dryrubber>, <immersiveintelligence:material:28>);

//Refinery.addRecipe(output, outputItem, input, energy);
Refinery.addRecipe(<liquid:ethanol> * 50, null, <liquid:refined_biofuel> * 100, 5000);

mods.immersiveengineering.Mixer.addRecipe(<liquid:napalm> * 500, <liquid:refined_oil> * 500, [<ore:dustAluminum>, <ore:dustAluminum>, <ore:dustAluminum>], 5000);

//mods.immersivepetroleum.Distillation.addRecipe(ILiquidStack[] fluidOutputs, IItemStack[] itemOutputs, ILiquidStack fluidInput, int energy, int time, float[] chance);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:petrotheum> * 5, <liquid:diesel> * 10, <liquid:lubricant> * 15, <liquid:refined_oil> * 20, <liquid:gasoline> * 25], [<ore:dustSulfur>.firstItem, <immersivepetroleum:material>], <liquid:crude_oil> * 75, 6000, 20, [0.02, 0.03]);
