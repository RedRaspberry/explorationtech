import mods.tconstruct.Alloy;

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
