#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.ItemList;

var amethyst_block = VanillaFactory.createBlock("amethyst_block", <blockmaterial:rock>);
amethyst_block.setBlockHardness(2.0);
amethyst_block.setBlockResistance(1.0);
amethyst_block.setToolClass("pickaxe");
amethyst_block.setBlockSoundType(<soundtype:glass>);
amethyst_block.register();

var tuff = VanillaFactory.createBlock("tuff", <blockmaterial:rock>);
tuff.setBlockHardness(5.0);
tuff.setBlockResistance(4.0);
tuff.setToolClass("pickaxe");
tuff.setBlockSoundType(<soundtype:stone>);
tuff.register();

var deepslate = VanillaFactory.createBlock("deepslate", <blockmaterial:rock>);
deepslate.setBlockHardness(6.0);
deepslate.setBlockResistance(4.0);
deepslate.setToolClass("pickaxe");
deepslate.setBlockSoundType(<soundtype:stone>);
deepslate.register();
