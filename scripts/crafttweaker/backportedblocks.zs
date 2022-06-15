import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.futuremc.Stonecutter;

val blockCopper = <ore:blockCopper>;
val slabCopper = <ore:slabCopper>;

blockCopper.add(<backportedblocks:copper_block:*>);
blockCopper.add(<backportedblocks:cut_copper:*>);
slabCopper.add(<backportedblocks:cut_copper_slabs:*>);

mods.futuremc.Stonecutter.addOutputs(<backportedblocks:cobbled_deepslate>,
<backportedblocks:cobbled_deepslate:1>,
<backportedblocks:cobbled_deepslate:2>,
<backportedblocks:cobbled_deepslate:3>,
<backportedblocks:cobbled_deepslate:4>,
<backportedblocks:cobbled_deepslate:5>,
<backportedblocks:cobbled_deepslate:6>,
<backportedblocks:cobbled_deepslate_stairs>,
<backportedblocks:polished_deepslate_stairs>,
<backportedblocks:deepslate_brick_stairs>,
<backportedblocks:deepslate_tile_stairs>,
<backportedblocks:cobbled_deepslate_wall>,
<backportedblocks:polished_deepslate_wall>,
<backportedblocks:deepslate_brick_wall>,
<backportedblocks:deepslate_tile_wall>,
<backportedblocks:cobbled_deepslate_slabs> * 2,
<backportedblocks:polished_deepslate_slabs> * 2,
<backportedblocks:deepslate_brick_slabs> * 2,
<backportedblocks:deepslate_tile_slabs> * 2);

mods.futuremc.Stonecutter.addOutputs(<backportedblocks:cobbled_deepslate:1>, <backportedblocks:polished_deepslate_stairs>, <backportedblocks:polished_deepslate_wall>, <backportedblocks:polished_deepslate_slabs> * 2);
mods.futuremc.Stonecutter.addOutputs(<backportedblocks:cobbled_deepslate:3>, <backportedblocks:deepslate_brick_stairs>, <backportedblocks:deepslate_brick_wall>, <backportedblocks:deepslate_brick_slabs> * 2);
mods.futuremc.Stonecutter.addOutputs(<backportedblocks:cobbled_deepslate:4>, <backportedblocks:deepslate_tile_stairs>, <backportedblocks:deepslate_tile_wall>, <backportedblocks:deepslate_tile_slabs> * 2);


mods.futuremc.Stonecutter.addOutputs(<backportedblocks:blackstone>, <backportedblocks:blackstone:1>,
<backportedblocks:blackstone:2>,
<backportedblocks:blackstone:3>,
<backportedblocks:blackstone:4>,
<backportedblocks:blackstone_stairs>,
<backportedblocks:blackstone_wall>,
<backportedblocks:blackstone_slabs> * 2,
<backportedblocks:polished_blackstone_stairs>,
<backportedblocks:polished_blackstone_wall>,
<backportedblocks:polished_blackstone_slabs> * 2,
<backportedblocks:blackstone_brick_stairs>,
<backportedblocks:blackstone_brick_wall>,
<backportedblocks:blackstone_brick_slabs> * 2);

mods.futuremc.Stonecutter.addOutputs(<backportedblocks:blackstone:1>, <backportedblocks:polished_blackstone_stairs>, <backportedblocks:polished_blackstone_wall>, <backportedblocks:polished_blackstone_slabs> * 2);
mods.futuremc.Stonecutter.addOutputs(<backportedblocks:blackstone:3>, <backportedblocks:blackstone_brick_stairs>, <backportedblocks:blackstone_brick_wall>, <backportedblocks:blackstone_brick_slabs> * 2);
