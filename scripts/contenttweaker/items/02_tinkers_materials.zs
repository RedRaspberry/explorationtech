#loader contenttweaker

##### traits ##############
val fluxfreeze = mods.contenttweaker.tconstruct.TraitBuilder.create("fluxfreeze");
fluxfreeze.color = 0xff9933; #web safe color deep saffron
fluxfreeze.maxLevel = 2;
fluxfreeze.countPerLevel = 100;
fluxfreeze.addItem(<item:redstonearsenal:material:32>);
fluxfreeze.localizedName = "Flux Freeze";
fluxfreeze.localizedDescription = "Freezes target in place for a short while, with increasing effects with level.";
fluxfreeze.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    if (wasCritical) {
        var data = trait.getData(tool);
        var level = data.level;
        target.addPotionEffect(<potion:netherex:frozen>.makePotionEffect(1 + level * 2, level, true, true));
    }
};
fluxfreeze.register();

######### Materials #############

val testMat = mods.contenttweaker.tconstruct.MaterialBuilder.create("kindlich_mat");
testMat.color = 0x8e661b; #item color
testMat.craftable = true; #can you part builder this?
testMat.liquid = <liquid:lava>;
testMat.castable = true; #can you casting table this?
testMat.addItem(<item:minecraft:comparator>); #items that have value in the part builder
testMat.addItem(<item:minecraft:repeater>, 1, 2);
testMat.addItem(<item:minecraft:red_flower:4>);
testMat.representativeItem = <item:minecraft:red_flower:4>;
testMat.addHeadMaterialStats(100, 1.5f, 5.5f, 5);
testMat.addHandleMaterialStats(0.3, 500);
testMat.addBowStringMaterialStats(0.5f);
testMat.addMaterialTrait(<ticontrait:fluxfreeze>, "bowstring");
testMat.addMaterialTrait(<ticontrait:fluxfreeze>, "head");
testMat.addMaterialTrait("blasting", "bowstring");
testMat.addMaterialTrait("blasting", "head");

//null (or not specifying that parameter at all) means that this is a default trait.
//Default traits are only queried when no other traits are added to that material type.
//In this case, the dense trait will only be on toolrods, because bowstrings and heads already have other traits.
testMat.addMaterialTrait("dense", null);

//Faulty, should error, though only during init, as then the strings will be checked.
testMat.addMaterialTrait("dance", null);

testMat.itemLocalizer = function(thisMaterial, itemName){return "Cool " + itemName;};
testMat.localizedName = "Wicked";
testMat.register();
