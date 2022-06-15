import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

import mods.railcraft.RollingMachine;

recipes.remove(<railcraft:trade_station>);
recipes.remove(<railcraft:cart_trade_station>);
<railcraft:trade_station>.addTooltip("This was never implemented and has no functionality. Use an IC2 Trade-O-Mat instead?");

RollingMachine.remove(<railcraft:rail:0>);

recipes.addShaped("ct_railcraft_motor", <railcraft:charge:5>, [
[null, <ore:stickMagnet> | <ore:rodMagnet>, null],
[<ore:plateTin>, <immersiveengineering:metal_decoration0>, <ore:plateTin>],
[null, <thermalfoundation:material:513>, null]]);

#why didn't these recipes already exist??
var post = <railcraft:post_metal>.definition;
var post2 = <railcraft:post_metal_platform>.definition;
var colors = {<ore:dyeWhite>: 0,
<ore:dyeOrange>: 1,
<ore:dyeMagenta>: 2,
<ore:dyeLightBlue>: 3 ,
<ore:dyeYellow>: 4 ,
<ore:dyeLime>: 5 ,
<ore:dyePink>: 6 ,
<ore:dyeGray>: 7 ,
<ore:dyeLightGray>: 8,
<ore:dyeCyan>: 9,
<ore:dyePurple>: 10,
<ore:dyeBlue>: 11,
<ore:dyeBrown>: 12,
<ore:dyeGreen>: 13,
<ore:dyeRed>: 14,
<ore:dyeBlack>: 15 } as int[IOreDictEntry];
for color, meta in colors {
  recipes.addShapeless("ct_shapeless_railcraft_post_colored"+meta, post.makeStack(meta) * 8, [color, <railcraft:post_metal:*>, <railcraft:post_metal:*>, <railcraft:post_metal:*>, <railcraft:post_metal:*>, <railcraft:post_metal:*>, <railcraft:post_metal:*>, <railcraft:post_metal:*>, <railcraft:post_metal:*>]);
  recipes.addShapeless("ct_shapeless_railcraft_platform_colored"+meta, post2.makeStack(meta) * 8, [color, <railcraft:post_metal_platform:*>, <railcraft:post_metal_platform:*>, <railcraft:post_metal_platform:*>, <railcraft:post_metal_platform:*>, <railcraft:post_metal_platform:*>, <railcraft:post_metal_platform:*>, <railcraft:post_metal_platform:*>, <railcraft:post_metal_platform:*>]);
}
