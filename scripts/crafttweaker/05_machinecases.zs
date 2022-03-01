import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemCondition;
import mods.ic2.BlockCutter;

#Add tiered machine cases
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
val saws = [<microblockcbe:saw_stone>, <microblockcbe:saw_iron>, <microblockcbe:saw_diamond>] as IIngredient[];
var sawtier = 0;
for item in saws {
recipes.addShapeless("cot_copper_part"+sawtier, <contenttweaker:partcopper> * 16, [item.transformDamage(), <contenttweaker:case_copper>]);
recipes.addShapeless("cot_invar_part"+sawtier, <contenttweaker:partinvar> * 16, [item.transformDamage(), <contenttweaker:case_invar>]);
recipes.addShapeless("cot_electrum_part"+sawtier, <contenttweaker:partelectrum> * 16, [item.transformDamage(), <contenttweaker:case_electrum>]);
recipes.addShapeless("cot_signalum_part"+sawtier, <contenttweaker:partsignalum> * 16, [item.transformDamage(), <contenttweaker:case_signalum>]);
recipes.addShapeless("CoT_enderium_part"+sawtier, <contenttweaker:partenderium> * 16, [item.transformDamage(), <contenttweaker:case_enderium>]);
sawtier += 1;
}

#block cutting machine recipe for machine parts
mods.ic2.BlockCutter.addRecipe(<contenttweaker:partcopper> * 16, <contenttweaker:case_copper>, 2);
mods.ic2.BlockCutter.addRecipe(<contenttweaker:partinvar> * 16, <contenttweaker:case_invar>, 2);
mods.ic2.BlockCutter.addRecipe(<contenttweaker:partelectrum> * 16, <contenttweaker:case_electrum>, 2);
mods.ic2.BlockCutter.addRecipe(<contenttweaker:partsignalum> * 16, <contenttweaker:case_signalum>, 2);
mods.ic2.BlockCutter.addRecipe(<contenttweaker:partenderium> * 16, <contenttweaker:case_enderium>, 2);
