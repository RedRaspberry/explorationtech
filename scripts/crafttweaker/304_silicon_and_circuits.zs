import mods.immersiveintelligence.PrecissionAssembler;
import mods.appliedenergistics2.Inscriber;
import mods.enderio.SagMill;
import mods.immersiveengineering.ArcFurnace;

<appliedenergistics2:material:5>.displayName = "Raw Silicon";
<enderio:item_material:5>.displayName = "Raw Silicon";

val oreDictEnt = <ore:itemSilicon>;

recipes.remove(<immersiveintelligence:material_boule>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveintelligence:material_boule>);

mods.immersiveengineering.ArcFurnace.addRecipe(<appliedenergistics2:material:5> * 6, <ore:dustQuartz> * 6 | <minecraft:sand> * 12 | <minecraft:soul_sand> * 8, <immersiveengineering:material:7>, 4000, 40, [<ore:dustCoke>]);

oreDictEnt.add(<immersiveintelligence:material_boule>);
oreDictEnt.remove(<appliedenergistics2:material:5>, <enderio:item_material:5>);

mods.enderio.SagMill.removeRecipe(<minecraft:sand>);
mods.enderio.SagMill.removeRecipe(<minecraft:redstone_ore>);
#mods.enderio.SagMill.removeRecipe(<atum:redstone_ore>);
mods.enderio.SagMill.removeRecipe(<minecraft:clay>);

mods.enderio.SagMill.addRecipe([<appliedenergistics2:material:5>], [50], <minecraft:sand>, "MULTIPLY_OUTPUT", 2400);
mods.enderio.SagMill.addRecipe([<minecraft:redstone> * 8, <thermalfoundation:material:866>, <appliedenergistics2:material:5>, <minecraft:cobblestone>], [100, 10, 50, 15], <ore:oreRedstone>, "CHANCE_ONLY", 3600);
mods.enderio.SagMill.addRecipe([<minecraft:clay_ball> * 2, <minecraft:clay_ball>, <appliedenergistics2:material:5> * 2], [100, 10, 80], <minecraft:clay>, "CHANCE_ONLY", 2400);



##### CIRCUITS #####

mods.appliedenergistics2.Inscriber.addRecipe(<item:contenttweaker:redstonewafer>, <ore:ingotRedstoneAlloy>, true, <appliedenergistics2:material:15>);
#mods.appliedenergistics2.Inscriber.addRecipe()
#Inscriber.addRecipe(IItemStack output, IItemStack input, boolean inscribe, @Optional IItemStack topInput, @Optional IItemStack bottomInput);
