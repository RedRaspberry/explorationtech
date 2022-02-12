import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

#ore -> 2 dust
var oretodust = {<minecraft:gold_ore>: <ore:dustGold>.firstItem, //gold
          <minecraft:iron_ore>: <ore:dustIron>.firstItem, //iron
          <immersiveengineering:ore:1>: <ore:dustAluminum>.firstItem, //aluminum
          <ic2:resource:4>: <immersiveengineering:metal:14>, //uranium
          <mekanism:oreblock>: <mekanism:dust:2>, //osmium
          <railcraft:ore_metal:5>: <mekores:mekanismore:114>, //zinc
          <thermalfoundation:ore>: <ore:dustCopper>.firstItem, //copper
          <thermalfoundation:ore:1>: <ore:dustTin>.firstItem, //tin
          <thermalfoundation:ore:2>: <ore:dustSilver>.firstItem, //silver
          <thermalfoundation:ore:3>: <ore:dustLead>.firstItem, //lead
          <thermalfoundation:ore:5>: <ore:dustNickel>.firstItem, //nickel
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
                <thermalfoundation:material:163>: <ore:plateBronze>.firstItem, //bronze
                <thermalfoundation:material:162>: <ore:plateInvar>.firstItem, //invar
                <thermalfoundation:material:129>: <ore:plateTin>.firstItem, //tin
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
var platetocasing = {<ore:plateBronze>.firstItem: <ic2:casing>, //bronze
                  <ore:plateCopper>.firstItem: <ic2:casing:1>, //copper
                  <ore:plateGold>.firstItem: <ic2:casing:2>, //gold
                  <ore:plateIron>.firstItem: <ic2:casing:3>, //iron
                  <ore:plateLead>.firstItem: <ic2:casing:4>, //lead
                  <ore:plateSteel>.firstItem: <ic2:casing:5>, //steel
                  <ore:plateTin>.firstItem: <ic2:casing:6> //tin
                  }
                  as IItemStack[IItemStack];
for plate1, casing in platetocasing {
  mods.magneticraft.CrushingTable.addRecipe(plate1, casing, true);
}
