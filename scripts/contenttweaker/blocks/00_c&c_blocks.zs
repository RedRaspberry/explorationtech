#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.ItemList;
import mods.contenttweaker.AxisAlignedBB;


val amethyst_block = VanillaFactory.createBlock("amethyst_block", <blockmaterial:rock>);
amethyst_block.setBlockHardness(2.0);
amethyst_block.setBlockResistance(1.0);
amethyst_block.setToolClass("pickaxe");
amethyst_block.setBlockSoundType(<soundtype:glass>);
amethyst_block.register();

val tuff = VanillaFactory.createBlock("tuff", <blockmaterial:rock>);
tuff.setBlockHardness(5.0);
tuff.setBlockResistance(4.0);
tuff.setToolClass("pickaxe");
tuff.setBlockSoundType(<soundtype:stone>);
tuff.register();

val deepslate = VanillaFactory.createBlock("deepslate", <blockmaterial:rock>);
deepslate.setBlockHardness(6.0);
deepslate.setBlockResistance(4.0);
deepslate.setToolClass("pickaxe");
deepslate.setBlockSoundType(<soundtype:stone>);
deepslate.register();

#val smooth_stone_slab = VanillaFactory.createBlock("smooth_stone_slab", <blockmaterial:rock>);
#smooth_stone_slab.entitySpawnable(false);
#smooth_stone_slab.fullBlock(false);
#smooth_stone_slab.axisAlignedBB(AxisAlignedBB.create(0.0d, 0.0d, 0.0d, 1.0d, 0.5d, 1.0d));
#smooth_stone_slab.setToolClass("pickaxe");
#smooth_stone_slab.setBlockSoundType(<soundtype:stone>);
#smooth_stone_slab.register();
