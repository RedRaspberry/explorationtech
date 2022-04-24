import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

recipes.remove(<psi:cad_assembly:*>);

recipes.addShaped("ct_iron_cad", <psi:cad_assembly>, [
[<ore:circuitBasic>, <ore:springSteel>, <ore:ingotIron>],
[<ore:blockIron>, null, null]]);

recipes.addShaped("ct_gold_cad", <psi:cad_assembly:1>, [
[<ore:circuitAdvanced>, <ore:springSteel>, <ore:ingotGold>],
[<ore:blockGold>, null, null]]);

recipes.addShaped("ct_psimetal_cad", <psi:cad_assembly:2>, [
[<ore:circuitElite>, <railcraft:charge:5> | <ic2:crafting:6>, <ore:ingotPsi>],
[<ore:blockPsiMetal>, null, null]]);

recipes.addShaped("ct_ebony_cad", <psi:cad_assembly:3>, [
[<ore:circuitElite>, <railcraft:charge:5> | <ic2:crafting:6>, <ore:ingotEbonyPsi>],
[<psi:psi_decorative:7>, null, null]]);

recipes.addShaped("ct_ivory_cad", <psi:cad_assembly:4>, [
[<ore:circuitElite>, <railcraft:charge:5> | <ic2:crafting:6>, <ore:ingotIvoryPsi>],
[<psi:psi_decorative:8>, null, null]]);

recipes.remove(<rpsideas:undervolted_cad_assembly>);
recipes.remove(<rpsideas:overvolted_cad_assembly>);
recipes.remove(<rpsideas:underclocked_cad_assembly>);
recipes.remove(<rpsideas:overclocked_cad_assembly>);
recipes.addShapeless("ct_lower_cad_1", <rpsideas:undervolted_cad_assembly>, [<psi:cad_assembly:3>,<enderio:item_extract_speed_downgrade>]);
recipes.addShapeless("ct_upper_cad_1", <rpsideas:overvolted_cad_assembly>, [<psi:cad_assembly:3>,<enderio:item_extract_speed_upgrade>]);
recipes.addShapeless("ct_lower_cad_2", <rpsideas:underclocked_cad_assembly>, [<psi:cad_assembly:4>,<enderio:item_extract_speed_downgrade>]);
recipes.addShapeless("ct_upper_cad_2", <rpsideas:overclocked_cad_assembly>, [<psi:cad_assembly:4>, <enderio:item_extract_speed_upgrade>]);

#more thematic exosuit controller and keypad recipes (also way more expensive but who's counting)
recipes.remove(<psi:exosuit_controller>);
recipes.addShaped("ct_exosuit", <psi:exosuit_controller>, [
[null, <ore:paneGlass>, null],
[null, <rpsideas:keypad>, null],
[null, <psi:material:1>, null]]);

recipes.remove(<rpsideas:keypad>);
recipes.addShaped("ct_psi_keypad", <rpsideas:keypad>, [
[<ore:ingotEbonyPsi>, <ore:paneGlass>, <psi:material:3>],
[<ore:ingotEbonyPsi>, <opencomputers:material:16>, <ore:ingotEbonyPsi>],
[<ore:ingotEbonyPsi>, <immersiveengineering:material:27>, <psi:material:3>]]);

recipes.remove(<psi:spell_drive>);
recipes.addShaped("ct_spelldrive", <psi:spell_drive>, [
[<ore:chipBasic>, <opencomputers:material:12>, <psi:material:1>],
[<ore:circuitBasic>, <opencomputers:material:12>, <ore:alloyBasic>],
[<ore:chipBasic>, <opencomputers:material:12>, <psi:material:1>]]);

#spell bullets
recipes.remove(<psi:spell_bullet:*>);
recipes.addShapeless("ct_bullet_mining", <psi:spell_bullet:12>, [<immersiveengineering:bullet>, <psi:material>, <immersiveengineering:drillhead:1>.anyDamage()]);
recipes.addShapeless("ct_bullet_charge", <psi:spell_bullet:10>, [<immersiveengineering:bullet>, <psi:material>, <ore:alloyBasic>]);
recipes.addShapeless("ct_bullet_explosive", <psi:spell_bullet:8>, [<immersiveengineering:bullet>, <psi:material>, <ore:gunpowder>]);
recipes.addShapeless("ct_bullet_circle", <psi:spell_bullet:6>, [<immersiveengineering:bullet>, <psi:material>, <ore:slimeball>]);
recipes.addShapeless("ct_bullet_loopcast", <psi:spell_bullet:4>, [<immersiveengineering:bullet>, <psi:material>, <minecraft:string>]);
recipes.addShapeless("ct_bullet_projectile", <psi:spell_bullet:2>, [<immersiveengineering:bullet>, <psi:material>, <minecraft:arrow>]);
recipes.addShapeless("ct_bullet_basic", <psi:spell_bullet>, [<immersiveengineering:bullet>, <psi:material>]);

#II processing for spell drives and some other stuff planned
