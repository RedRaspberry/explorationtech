#loader contenttweaker

import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.tconstruct.TraitBuilder;
import mods.contenttweaker.tconstruct.Trait;
import mods.contenttweaker.tconstruct.TraitDataRepresentation;

### MATERIALS ###

var crystalMagic = mods.contenttweaker.tconstruct.MaterialBuilder.create("crystalMagic");
crystalMagic.color = 0xCCBEF8; #azula says this is probably a lightblue/purple, havn't checked lol
crystalMagic.craftable = false;
crystalMagic.castable = true;
crystalMagic.liquid = <liquid:liquidCrystalMagic>;

#optional, but why not?
crystalMagic.shard = <item:ebwizardry:crystal_shard>;

#crystalMagic.representiveItem = <item:ebwizardry:magic_crystal>;

#items that can be used to repair in the part builder or create the tool if that bool was set to true, then their repair values
crystalMagic.addItem(<item:ebwizardry:magic_crystal>);
crystalMagic.addItem(<item:ebwizardry:crystal_shard>, 1, 16);
crystalMagic.addItem(<item:ebwizardry:grand_crystal>, 1, 1296);

#stats for the parts - see the docs for this. it's complicated
crystalMagic.addHeadMaterialStats(1, 1 as float, 1 as float, 1);
crystalMagic.addHandleMaterialStats(0.8 as float, 70);
crystalMagic.addExtraMaterialStats(50);
crystalMagic.addBowMaterialStats(1 as float, 1 as float, 1 as float);
#crystalMagic.addArrowShaftMaterialStats(0.8f, 2);
#crystalMagic.addProjectileMaterialStats();

#part traits and where they go
crystalMagic.addMaterialTrait("ecological", "extra");
crystalMagic.addMaterialTrait("ecological", "handle");
crystalMagic.addMaterialTrait("direct", "head");
crystalMagic.addMaterialTrait("crystalline", "head");
crystalMagic.addMaterialTrait("crystalline");
#crystalMagic.remove("crystalline", "shaft");
#crystalMagic.addMaterialTrait("hovering", "shaft");

#after this line no more changes can be made. without this, nothing is added to the game
crystalMagic.register();

### TRAITS ###
# fire, ice, earth, air, electric, sorcery, healing

var fireTrait = mods.contenttweaker.tconstruct.TraitBuilder.create("fireTrait");
fireTrait.addItem(<item:ebwizardry:magic_crystal:1>);
fireTrait.localizedName = "Blazing";
fireTrait.localizedDescription = "Your tool is imbued with the elemental power of fire!";
fireTrait.afterHit = function(thisTrait, tool, attacker, target, damageDealt, wasCrit, wasHit) {
	if wasHit == true {
    var traitData = thisTrait.getData(tool);
		var traitLevel = traitData.level;
    var fireTimer = 0;
      if wasCrit == true {
        fireTimer = traitLevel * 3;
      }
      else {
        fireTimer = traitLevel * 2;
      }
    target.setFire(fireTimer);
  }
};

fireTrait.register();
