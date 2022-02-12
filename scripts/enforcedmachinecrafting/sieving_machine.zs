import mods.industrialforegoing.FluidSievingMachine;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

// FluidSievingMachine.add(ILiquidStack fluidInput, IItemStack itemOutput, IItemStack sieveItemInput);

#fluxed electrum
FluidSievingMachine.add(<liquid:redstone> * 500, <redstonearsenal:material:32>, <immersiveengineering:metal:7>);
FluidSievingMachine.add(<liquid:redstone> * 500, <redstonearsenal:material:32>, <thermalfoundation:material:161>);

#conductive "iron"
FluidSievingMachine.add(<liquid:redstone> * 100, <enderio:item_alloy_ingot:4>, <thermalfoundation:material:162>);

#redstone alloy
FluidSievingMachine.add(<liquid:redstone> * 100, <enderio:item_alloy_ingot:3>, <appliedenergistics2:material:5>);

#pulsating "iron"
FluidSievingMachine.add(<liquid:ender> * 250, <enderio:item_alloy_ingot:5>, <enderio:item_alloy_ingot>);
