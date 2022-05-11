import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import mods.railcraft.RollingMachine;

#remove all rod crafting table recipes and replace with one that provides 1/4 the output (2:1 ratio ingot->rod)
val rods = {"iron": [<immersiveengineering:material:1>, <minecraft:iron_ingot>],
"steel": [<immersiveengineering:material:2>, <immersiveengineering:metal:8>],
"aluminium": [<immersiveengineering:material:3>, <immersiveengineering:metal:1>],
"gold": [<immersiveposts:metal_rods>, <minecraft:gold_ingot>],
"copper": [<immersiveposts:metal_rods:1>, <immersiveengineering:metal>],
"lead": [<immersiveposts:metal_rods:2>, <immersiveengineering:metal:2>],
"silver": [<immersiveposts:metal_rods:3>, <immersiveengineering:metal:3>],
"nickel": [<immersiveposts:metal_rods:4>, <immersiveengineering:metal:4>],
"constantan": [<immersiveposts:metal_rods:5>, <immersiveengineering:metal:6>],
"electrum": [<immersiveposts:metal_rods:6>, <immersiveengineering:metal:7>],
"uranium": [<immersiveposts:metal_rods:7>, <immersiveengineering:metal:5>]
  } as IItemStack[][string];

for key, item in rods {
#crafting table 2 ingots -> 1 rod
  recipes.remove(item[0]);

#rolling machine 2 ingots -> 2 rods
  RollingMachine.addShaped("ct_"+key+"_rod_rm", item[0] * 2,
  [ [null, null, null] , [null, item[1], null] , [null, item[1], null] ]);
  recipes.addShaped("ct_"+key+"_rod",item[0],
  [ [item[1]], [item[1]] ] );

#multiblock rolling machine 2 ingots -> 4 rods
  val recipe = mods.modularmachinery.RecipeBuilder.newBuilder("ct_"+key+"rod_mbrm", "rolling_machine", 1000, 0);

  recipe.addEnergyPerTickInput(40);
  recipe.addItemInput(item[1]);
  recipe.addItemOutput(item[0] * 2);
  recipe.build();
}

#additonal rod crafting table recipes
recipes.addShaped("ct_invar_rod", <contenttweaker:rodinvar>, [
[<ore:ingotInvar>],
[<ore:ingotInvar>]]);
RollingMachine.addShaped("ct_invar_rod_rm", <contenttweaker:rodinvar> * 2, [
[null, null, null],
[null, <ore:ingotInvar>, null],
[null, <ore:ingotInvar>, null]]);
val invar = mods.modularmachinery.RecipeBuilder.newBuilder("ct_"+"invar"+"rod_mbrm", "rolling_machine", 1000, 0);
invar.addEnergyPerTickInput(40);
invar.addItemInput(<ore:ingotInvar>);
invar.addItemOutput(<contenttweaker:rodinvar> * 2);
invar.build();

recipes.addShaped("ct_signalum_rod", <contenttweaker:rodsignalum>, [
[<ore:ingotSignalum>],
[<ore:ingotSignalum>]]);
RollingMachine.addShaped("ct_signalum_rod_rm", <contenttweaker:rodsignalum> * 2, [
[null, null, null],
[null, <ore:ingotSignalum>, null],
[null, <ore:ingotSignalum>, null]]);
val signalum = mods.modularmachinery.RecipeBuilder.newBuilder("ct_"+"signalum"+"rod_mbrm", "rolling_machine", 1000, 0);
signalum.addEnergyPerTickInput(40);
signalum.addItemInput(<ore:ingotSignalum>);
signalum.addItemOutput(<contenttweaker:rodsignalum> * 2);
signalum.build();

recipes.addShaped("ct_enderium_rod", <contenttweaker:rodenderium>, [
[<ore:ingotEnderium>],
[<ore:ingotEnderium>]]);
RollingMachine.addShaped("ct_enderium_rod_rm", <contenttweaker:rodenderium> * 2, [
[null, null, null],
[null, <ore:ingotEnderium>, null],
[null, <ore:ingotEnderium>, null]]);
val enderium = mods.modularmachinery.RecipeBuilder.newBuilder("ct_"+"enderium"+"rod_mbrm", "rolling_machine", 1000, 0);
enderium.addEnergyPerTickInput(40);
enderium.addItemInput(<ore:ingotEnderium>);
enderium.addItemOutput(<contenttweaker:rodenderium> * 2);
enderium.build();

#wires
var wires = {"copper": [<immersiveengineering:material:20>, <ore:stickCopper>.firstItem],
"electrum": [<immersiveengineering:material:21>, <ore:stickElectrum>.firstItem],
"aluminium": [<immersiveengineering:material:22>, <ore:stickAluminium>.firstItem],
"steel": [<immersiveengineering:material:23>, <ore:stickSteel>.firstItem],
"invar": [<contenttweaker:wireinvar>, <contenttweaker:rodinvar>],
"signalum": [<contenttweaker:wiresignalum>, <contenttweaker:rodsignalum>],
"enderium": [<contenttweaker:wireenderium>, <contenttweaker:rodenderium>]} as IItemStack[][string];

for key, item in wires {

  RollingMachine.addShaped("ct_"+key+"_wire_rm", item[0] * 2,
  [ [null, null, null] , [null, item[1], null] , [null, null, null] ]);

#multiblock rolling machine 2 ingots -> 4 rods
#  var wirembrm = mods.modularmachinery.RecipeBuilder.newBuilder("ct_"+key+"wire_mbrm", "rolling_machine", 1000, 0);

#  wirembrm.addEnergyPerTickInput(40);
#  wirembrm.addItemInput(item[1]);
#  wirembrm.addItemOutput(item[0] * 3);
#  wirembrm.build();
  }
