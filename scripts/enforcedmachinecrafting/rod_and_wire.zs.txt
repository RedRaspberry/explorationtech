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
  } as IIngredient[][string];

for mat in rods {
  recipes.remove(mat[0]);
  RollingMachine.addShaped("ct_"+mat[0]+"_rod_rm", mat[0],
  [[mat[1]],
  [mat[1]]]);
  recipes.addShaped("ct_"+mat[0]+"_rod",mat[0],
  [[mat[1]],
  [mat[1]]]);
  }
#additonal rod crafting table recipes
recipes.addShaped("ct_invar_rod", <contenttweaker:rodinvar> * 2, [
[<ore:ingotInvar>],
[<ore:ingotInvar>]]);

recipes.addShaped("ct_signalum_rod", <contenttweaker:rodsignalum> * 2, [
[<ore:ingotSignalum>],
[<ore:ingotSignalum>]]);

recipes.addShaped("ct_enderium_rod", <contenttweaker:rodenderium> * 2, [
[<ore:ingotEnderium>],
[<ore:ingotEnderium>]]);


#wires
#<immersiveengineering:material:20>
#<immersiveengineering:material:21>
#<immersiveengineering:material:22>
#<immersiveengineering:material:23>
#<contenttweaker:wireinvar>
#<contenttweaker:wiresignalum>
#<contenttweaker:wireenderium>
