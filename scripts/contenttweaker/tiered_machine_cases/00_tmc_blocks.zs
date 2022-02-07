#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.ItemList;

#pretty simple stuff, just registering blocks for unified machine cases (instead of having them spread across thermal, foregoing, mek, ic2, etc!)
var case_copper = VanillaFactory.createBlock("case_copper", <blockmaterial:iron>);
case_copper.setBlockHardness(1.0);
case_copper.setBlockResistance(1.0);
case_copper.setToolClass("pickaxe");
case_copper.setBlockSoundType(<soundtype:metal>);
case_copper.register();

var case_invar = VanillaFactory.createBlock("case_invar", <blockmaterial:iron>);
case_invar.setBlockHardness(1.0);
case_invar.setBlockResistance(1.0);
case_invar.setToolClass("pickaxe");
case_invar.setBlockSoundType(<soundtype:metal>);
case_invar.register();

var case_electrum = VanillaFactory.createBlock("case_electrum", <blockmaterial:iron>);
case_electrum.setBlockHardness(1.0);
case_electrum.setBlockResistance(1.0);
case_electrum.setToolClass("pickaxe");
case_electrum.setBlockSoundType(<soundtype:metal>);
case_electrum.register();

var case_signalium = VanillaFactory.createBlock("case_signalium", <blockmaterial:iron>);
case_signalium.setBlockHardness(1.0);
case_signalium.setBlockResistance(1.0);
case_signalium.setToolClass("pickaxe");
case_signalium.setBlockSoundType(<soundtype:metal>);
case_signalium.register();

var case_enderium = VanillaFactory.createBlock("case_enderium", <blockmaterial:iron>);
case_enderium.setBlockHardness(1.0);
case_enderium.setBlockResistance(1.0);
case_enderium.setToolClass("pickaxe");
case_enderium.setBlockSoundType(<soundtype:metal>);
case_enderium.register();
