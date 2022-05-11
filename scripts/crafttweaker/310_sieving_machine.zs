import mods.industrialforegoing.FluidSievingMachine;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

// FluidSievingMachine.add(ILiquidStack fluidInput, IItemStack itemOutput, IItemStack sieveItemInput);

#fluxed electrum
mods.industrialforegoing.FluidSievingMachine.add(<liquid:redstone> * 500, <redstonearsenal:material:32>, <ore:ingotElectrum>.firstItem);

#conductive "iron"
mods.industrialforegoing.FluidSievingMachine.add(<liquid:redstone> * 100, <enderio:item_alloy_ingot:4>, <ore:ingotConstantan>.firstItem);

#redstone alloy
mods.industrialforegoing.FluidSievingMachine.add(<liquid:redstone> * 100, <enderio:item_alloy_ingot:3>, <ore:ingotSilicon>.firstItem);

#pulsating "iron"
mods.industrialforegoing.FluidSievingMachine.add(<liquid:ender> * 250, <enderio:item_alloy_ingot:5>, <enderio:item_alloy_ingot>);

#blazing invar

#energetic signalum

#gelid enderium
