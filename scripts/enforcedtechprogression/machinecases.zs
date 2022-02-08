import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

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

recipes.addShaped("CoT_signalum_case", <contenttweaker:case_signalium>, [
[<ore:plateSteel>, <contenttweaker:wiresignalum>, <ore:plateSteel>],
[<contenttweaker:wiresignalum>, <ore:blockSignalum>, <contenttweaker:wiresignalum>],
[<ore:plateSteel>, <contenttweaker:wiresignalum>, <ore:plateSteel>]]);

recipes.addShaped("CoT_enderium_case", <contenttweaker:case_enderium>, [
[<simplyjetpacks:metaitemmods:6>, <contenttweaker:wireenderium>, <simplyjetpacks:metaitemmods:6>],
[<contenttweaker:wireenderium>, <ore:blockEnderium>, <contenttweaker:wireenderium>],
[<simplyjetpacks:metaitemmods:6>, <contenttweaker:wireenderium>, <simplyjetpacks:metaitemmods:6>]]);
