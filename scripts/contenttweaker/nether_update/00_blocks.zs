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
list.clear();
list.add(<item:minecraft:gold_nugget> % 70);
return;
});

gilded_blackstone.setBlockHardness(6.0);
gilded_blackstone.setBlockResistance(6.0);
gilded_blackstone.setToolClass("pickaxe");
gilded_blackstone.setBlockSoundType(<soundtype:stone>);
gilded_blackstone.register();
