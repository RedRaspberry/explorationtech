#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.ItemList;

var mech_engineering_block = VanillaFactory.createBlock("mech_engineering_block", <blockmaterial:iron>);
mech_engineering_block.setBlockHardness(1.0);
mech_engineering_block.setBlockResistance(1.0);
mech_engineering_block.setToolClass("pickaxe");
mech_engineering_block.setBlockSoundType(<soundtype:metal>);
mech_engineering_block.register();
