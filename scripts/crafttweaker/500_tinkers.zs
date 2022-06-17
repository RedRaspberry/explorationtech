import mods.tconstruct.Alloy;
import crafttweaker.item.IItemStack;
import mods.tconstruct.Casting;

recipes.remove(<tconstruct:smeltery_controller>);
recipes.addShaped("ct_costly_ticon_smeltery", <tconstruct:smeltery_controller>, [
[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
[<tconstruct:materials>, <thermalfoundation:glass:3>, <tconstruct:materials>],
[<tconstruct:materials>, <immersiveengineering:metal:36>, <tconstruct:materials>]]);

#import mods.tconstruct.Melting;
#mods.tconstruct.Melting.addRecipe(<liquid:liquidCrystalMagic> * 144, <item:ebwizardry:crystal_magic>);
#mods.tconstruct.Melting.addRecipe(<liquid:liquidCrystalMagic> * 1296, <item:ebwizardry:grand_crystal>);
#mods.tconstruct.Melting.addRecipe(<liquid:liquidCrystalMagic> * 16, <item:ebwizardry:crystal_shard>);

#mods.tconstruct.Melting.addEntityMelting(<entity:ebwizardry:wizard>, <liquid:liquidCrystalMagic>);
#mods.tconstruct.Melting.addEntityMelting(<entity:ebwizardry:evil_wizard>, <liquid:liquidCrystalMagic>);

//mods.tconstruct.Casting.addTableRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);
recipes.remove(<tinkertoolcasts:upgrade_advanced>);
recipes.remove(<tinkertoolcasts:upgrade_reinforced>);
recipes.remove(<tinkertoolcasts:upgrade_iridium>);
recipes.remove(<tinkertoolcasts:upgrade_ultimate>);

mods.tconstruct.Casting.addTableRecipe(<tinkertoolcasts:upgrade_advanced>, <thermalfoundation:upgrade>, <liquid:pyrotheum>, 500, true, 200);
mods.tconstruct.Casting.addTableRecipe(<tinkertoolcasts:upgrade_reinforced>, <thermalfoundation:upgrade:1>, <liquid:redstone>, 500, true, 400);
mods.tconstruct.Casting.addTableRecipe(<tinkertoolcasts:upgrade_iridium>, <thermalfoundation:upgrade:2>, <liquid:glowstone>, 500, true, 800);
mods.tconstruct.Casting.addTableRecipe(<tinkertoolcasts:upgrade_ultimate>, <thermalfoundation:upgrade:3>, <liquid:cryotheum>, 500, true, 1600);

//<ore:ingotMelodicAlloy>
//<ore:ingotStellarAlloy>
