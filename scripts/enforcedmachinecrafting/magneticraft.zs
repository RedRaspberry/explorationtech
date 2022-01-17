import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

#ore -> 2 dust
var oretodust = {<minecraft:gold_ore>: <thermalfoundation:material:1>, //gold
          <minecraft:iron_ore>: <thermalfoundation:material>, //iron
          <immersiveengineering:ore:1>: <immersiveengineering:metal:10>, //aluminum
          <ic2:resource:4>: <immersiveengineering:metal:14>, //uranium
          <mekanism:oreblock>: <mekanism:dust:2>, //osmium
          <railcraft:ore_metal:5>: <mekores:mekanismore:114>, //zinc
          <thermalfoundation:ore>: <thermalfoundation:material:64>, //copper
          <thermalfoundation:ore:1>: <thermalfoundation:material:65>, //tin
          <thermalfoundation:ore:2>: <thermalfoundation:material:66>, //silver
          <thermalfoundation:ore:3>: <thermalfoundation:material:67>, //lead
          <thermalfoundation:ore:5>: <thermalfoundation:material:69>, //nickel
          <tconstruct:ore>: <mekores:mekanismore:39>, //cobalt
          <tconstruct:ore:1>: <mekores:mekanismore:44> //ardite
          }
          as IItemStack[IItemStack];
for ore, dust in oretodust {
  mods.magneticraft.CrushingTable.addRecipe(ore, dust * 2, true);
}

#ingot -> plate
var ingottoplate = {<thermalfoundation:material:167>: <thermalfoundation:material:359>, //enderium
                <thermalfoundation:material:166>: <thermalfoundation:material:358>, //lumium
                <thermalfoundation:material:165>: <thermalfoundation:material:357>, //signalium
                <railcraft:ingot:9>: <railcraft:plate:11>, //brass
                <thermalfoundation:material:163>: <thermalfoundation:material:355>, //bronze
                <thermalfoundation:material:162>: <thermalfoundation:material:354>, //invar
                <thermalfoundation:material:129>: <thermalfoundation:material:321>, //tin
                <railcraft:ingot:8>: <railcraft:plate:10>, //zinc
                <thaumcraft:ingot>: <thaumcraft:plate:2>, //thaumium
                <thaumcraft:ingot:1>: <thaumcraft:plate:3>, //void metal
                <immersiveengineering:metal:5>: <immersiveengineering:metal:35> //uranium
                }
                as IItemStack[IItemStack];
for ingot, plate in ingottoplate {
  mods.magneticraft.CrushingTable.addRecipe(ingot, plate, true);
}
#plate -> ic2 casing
var platetocasing = {<thermalfoundation:material:355>: <ic2:casing>, //bronze
                  <immersiveengineering:metal:30>: <ic2:casing:1>, //copper
                  <immersiveengineering:metal:40>: <ic2:casing:2>, //gold
                  <immersiveengineering:metal:39>: <ic2:casing:3>, //iron
                  <immersiveengineering:metal:32>: <ic2:casing:4>, //lead
                  <immersiveengineering:metal:38>: <ic2:casing:5>, //steel
                  <thermalfoundation:material:321>: <ic2:casing:6> //tin
                  }
                  as IItemStack[IItemStack];
for plate1, casing in platetocasing {
  mods.magneticraft.CrushingTable.addRecipe(plate1, casing, true);
}
