import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

#Machine cases
recipes.addShaped("CoT_copper_case", <contenttweaker:case_copper>, [
[<ore:plateIron>, <minecraft:redstone>, <ore:plateIron>],
[<ore:wireCopper>, <ore:gearCopper>, <ore:wireCopper>],
[<ore:plateIron>, <minecraft:redstone>, <ore:plateIron>]]);

recipes.addShaped("CoT_invar_case", <contenttweaker:case_invar>, [
[<ore:plateIron>, <contenttweaker:wireinvar>, <ore:plateIron>],
[<contenttweaker:wireinvar>, <minecraft:redstone_block>, <contenttweaker:wireinvar>],
[<ore:plateIron>, <contenttweaker:wireinvar>, <ore:plateIron>]]);

recipes.addShaped("CoT_electrum_case", <contenttweaker:case_electrum>, [
[<ore:plateIron>, <ore:wireElectrum>, <ore:plateIron>],
[<ore:wireElectrum>, <redstonearsenal:material:96>, <ore:wireElectrum>],
[<ore:plateIron>, <ore:wireElectrum>, <ore:plateIron>]]);

recipes.addShaped("CoT_signalum_case", <contenttweaker:case_signalum>, [
[<ore:plateSteel>, <contenttweaker:wiresignalum>, <ore:plateSteel>],
[<contenttweaker:wiresignalum>, <ore:blockSignalum>, <contenttweaker:wiresignalum>],
[<ore:plateSteel>, <contenttweaker:wiresignalum>, <ore:plateSteel>]]);

recipes.addShaped("CoT_enderium_case", <contenttweaker:case_enderium>, [
[<simplyjetpacks:metaitemmods:6>, <contenttweaker:wireenderium>, <simplyjetpacks:metaitemmods:6>],
[<contenttweaker:wireenderium>, <ore:blockEnderium>, <contenttweaker:wireenderium>],
[<simplyjetpacks:metaitemmods:6>, <contenttweaker:wireenderium>, <simplyjetpacks:metaitemmods:6>]]);

#machine parts
recipes.addShaped("cot_copper_part", <contenttweaker:partCopper> * 16, [
[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
[<ore:ingotCopper>, <contenttweaker:case_copper>, <ore:ingotCopper>],
[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]]);

recipes.addShaped("cot_invar_part", <contenttweaker:partInvar> * 16, [
[<ore:ingotInvar>, <ore:ingotInvar>, <ore:ingotInvar>],
[<ore:ingotInvar>, <contenttweaker:case_invar>, <ore:ingotInvar>],
[<ore:ingotInvar>, <ore:ingotInvar>, <ore:ingotInvar>]]);

recipes.addShaped("cot_electrum_part", <contenttweaker:partElectrum> * 16, [
[<ore:ingotElectrum>, <ore:ingotElectrum>, <ore:ingotElectrum>],
[<ore:ingotElectrum>, <contenttweaker:case_electrum>, <ore:ingotElectrum>],
[<ore:ingotElectrum>, <ore:ingotElectrum>, <ore:ingotElectrum>]]);

recipes.addShaped("cot_signalum_part", <contenttweaker:partSignalum> * 16, [
[<ore:ingotSignalum>, <ore:ingotSignalum>, <ore:ingotSignalum>],
[<ore:ingotSignalum>, <contenttweaker:case_signalum>, <ore:ingotSignalum>],
[<ore:ingotSignalum>, <ore:ingotSignalum>, <ore:ingotSignalum>]]);

recipes.addShaped("cot_enderium_part", <contenttweaker:partEnderium> * 16, [
[<ore:ingotEnderium>, <ore:ingotEnderium>, <ore:ingotEnderium>],
[<ore:ingotEnderium>, <contenttweaker:case_enderium>, <ore:ingotEnderium>],
[<ore:ingotEnderium>, <ore:ingotEnderium>, <ore:ingotEnderium>]]);
