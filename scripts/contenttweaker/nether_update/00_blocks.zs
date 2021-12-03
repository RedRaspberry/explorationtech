#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.DropHandler;

var blackstone = VanillaFactory.createBlock("blackstone", <blockmaterial:rock>);
blackstone.setBlockHardness(6.0);
blackstone.setBlockResistance(6.0);
blackstone.setToolClass("pickaxe");
blackstone.setBlockSoundType(<soundtype:stone>);
blackstone.register();

var gilded_blackstone = VanillaFactory.createBlock("gilded_blackstone", <blockmaterial:rock>);
gilded_blackstone.setDropHandler(function(drops, world, position, state, fortune) {
list.add(<item:minecraft:gold_nugget>);
return;
});
gilded_blackstone.setBlockHardness(6.0);
gilded_blackstone.setBlockResistance(6.0);
gilded_blackstone.setToolClass("pickaxe");
gilded_blackstone.setBlockSoundType(<soundtype:stone>);
gilded_blackstone.register();

var nether_gold = VanillaFactory.createBlock("nether_gold", <blockmaterial:rock>);
nether_gold.setDropHandler(function(drops, world, position, state, fortune) {
list.add(<item:minecraft:gold_nugget>);
return;
});
nether_gold.setBlockHardness(3.0);
nether_gold.setBlockResistance(3.0);
nether_gold.setToolClass("pickaxe");
nether_gold.setBlockSoundType(<soundtype:stone>);
nether_gold.register();

var shroomlight = VanillaFactory.createBlock("shroomlight", <blockmaterial:gourd>);
shroomlight.setBlockHardness(6.0);
shroomlight.setBlockResistance(4.0);
shroomlight.setToolClass("hoe");
shroomlight.setBlockSoundType(<soundtype:slime>);
shroomlight.register();
