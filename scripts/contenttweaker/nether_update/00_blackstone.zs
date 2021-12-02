#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var blackstone = VanillaFactory.createBlock("blackstone", <blockmaterial:rock>);
blackstone.setBlockHardness(6.0);
blackstone.setBlockResistance(6.0);
blackstone.setToolClass("pickaxe");
blackstone.setBlockSoundType(<soundtype:stone>);
blackstone.register();
