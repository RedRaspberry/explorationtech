import mods.tconstruct.Alloy;
import crafttweaker.item.IItemStack;

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

val tinkertoolcasts = {
"advanced" : [<tinkertoolcasts:upgrade_advanced>, <thermalfoundation:upgrade>],
"reinforced" : [<tinkertoolcasts:upgrade_reinforced>, <thermalfoundation:upgrade:1>],
"iridium" : [<tinkertoolcasts:upgrade_iridium>, <thermalfoundation:upgrade:2>],
"ultimate" : [<tinkertoolcasts:upgrade_ultimate>, <thermalfoundation:upgrade:3>]
} as IItemStack[][string];

var prevTier = null;

for tier, cast in tinkertoolcasts {
  recipes.remove(cast[0]);
  if tier == "advanced" {
    recipes.addShapeless("ct_tinkertoolcasts_"+tier, cast[0], [cast[1], <tconstruct:cast_custom>]);
  }
  else {
    recipes.addShapeless("ct_tinkertoolcasts_"+tier, cast[0], [cast[1], prevTier]);
  }
  prevTier = cast[0];
}

//<ore:ingotMelodicAlloy>
//<ore:ingotStellarAlloy>
