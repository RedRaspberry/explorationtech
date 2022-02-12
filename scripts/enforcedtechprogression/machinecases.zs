import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemCondition;

#remove all existing cases from all mods
val old_cases = [<enderio:item_material>,
  <enderio:item_material:1>,
  <enderio:item_material:53>,
  <enderio:item_material:54>,
  <enderio:item_material:55>,
  <enderio:item_material:66>,
  <teslacorelib:machine_case>,
  <thermalexpansion:frame>,
  <thermalexpansion:frame:64>,
  <rftools:machine_frame>,
  <ic2:resource:12>,
  <ic2:resource:13>,
  <mekanism:basicblock:8>
];
for oldcase in old_cases {
  recipes.remove(oldcase);
}

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

for item in saws {
recipes.addShapeless("cot_copper_part", <contenttweaker:partcopper> * 16, [item.transformDamage(), <contenttweaker:case_copper>]);
recipes.addShapeless("cot_invar_part", <contenttweaker:partinvar> * 16, [item.transformDamage(), <contenttweaker:case_invar>]);
recipes.addShapeless("cot_electrum_part", <contenttweaker:partelectrum> * 16, [item.transformDamage(), <contenttweaker:case_electrum>]);
recipes.addShapeless("cot_signalum_part", <contenttweaker:partsignalum> * 16, [item.transformDamage(), <contenttweaker:case_signalum>]);
recipes.addShapeless("CoT_enderium_part", <contenttweaker:partenderium> * 16, [item.transformDamage(), <contenttweaker:case_enderium>]);
}
