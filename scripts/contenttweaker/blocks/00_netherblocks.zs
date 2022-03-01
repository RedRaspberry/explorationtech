#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.ItemList;

var blackstone = VanillaFactory.createBlock("blackstone", <blockmaterial:rock>);
blackstone.setBlockHardness(4.0);
blackstone.setBlockResistance(4.0);
blackstone.setToolClass("pickaxe");
blackstone.setBlockSoundType(<soundtype:stone>);
blackstone.register();

var gilded_blackstone = VanillaFactory.createBlock("gilded_blackstone", <blockmaterial:rock>);
gilded_blackstone.setDropHandler(function(drops, world, position, state, fortune) {
  drops.add(<item:minecraft:gold_nugget>);
  return;
});
gilded_blackstone.setBlockHardness(4.0);
gilded_blackstone.setBlockResistance(4.0);
gilded_blackstone.setToolClass("pickaxe");
gilded_blackstone.setBlockSoundType(<soundtype:stone>);
gilded_blackstone.register();

var nether_gold_ore = VanillaFactory.createBlock("nether_gold_ore", <blockmaterial:rock>);
nether_gold_ore.setDropHandler(function(drops, world, position, state, fortune) {
  drops.add(<item:minecraft:gold_nugget>);
  return;
});
nether_gold_ore.setBlockHardness(3.0);
nether_gold_ore.setBlockResistance(3.0);
nether_gold_ore.setToolClass("pickaxe");
nether_gold_ore.setBlockSoundType(<soundtype:stone>);
nether_gold_ore.register();

var shroomlight = VanillaFactory.createBlock("shroomlight", <blockmaterial:gourd>);
shroomlight.setBlockHardness(5.0);
shroomlight.setBlockResistance(4.0);
shroomlight.setLightValue(1);
shroomlight.setToolClass("axe");
shroomlight.setBlockSoundType(<soundtype:stone>);
shroomlight.register();
