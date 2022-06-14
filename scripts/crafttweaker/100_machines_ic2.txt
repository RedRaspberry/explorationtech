val boiler = <ic2:crafting:8>;
val coil = <ic2:crafting:5>;
val motor = <ic2:crafting:6>;
val fluidcell = <ic2:fluid_cell>;
val heatconductor = <ic2:crafting:7>;
val generator = <ic2:te:3>;

val coilBlockLV = <immersiveengineering:metal_decoration0>;
val coilBlockMV = <immersiveengineering:metal_decoration0:1>;
val coilBlockHV = <immersiveengineering:metal_decoration0:2>;

val casingCopper = <ic2:casing:1>;
val casingIron = <ic2:casing:3>;
val casingGold = <ic2:casing:2>;
val casingTin = <ic2:casing:6>;
val casingBronze = <ic2:casing>;
val casingLead = <ic2:casing:4>;
val casingSteel = <ic2:casing:5>;

// Removes everysingle revelent ic2:te while leaving the nuke and storage blocks alone, meta46 is iron furnace
val tileEntities = <ic2:te>.definition;
// 3 - 89 is the range
for i in 3 to 9 {
  if(i != 46){
	 recipes.remove(tileEntities.makeStack(i));
   }
}
//Cheaper fluid cell

recipes.remove(<ic2:fluid_cell>);

recipes.addShaped("ct_cheap_ic2_fluidcell", <ic2:fluid_cell> * 4, [
[null, casingTin, null],
[casingTin, <ore:paneGlass>, casingTin],
[null, casingTin, null]]);

// IC2 Generator
recipes.addShaped("ct_ic2_generator", <ic2:te:3>, [
[casingIron, casingIron, casingIron],
[casingIron, coilBlockLV, casingIron],
[casingIron, <ic2:te:46>, casingIron]]);

// TIER 1 MACHINES
recipes.addShaped("ct_ic2_geothermalgenerator", <ic2:te:4>, [
[<ore:blockGlassHardened>, fluidcell, <ore:blockGlassHardened>],
[<ore:blockGlassHardened>, fluidcell, <ore:blockGlassHardened>],
[casingCopper, generator, casingCopper]]);

recipes.addShaped("ct_ic2_kineticgenerator", <ic2:te:5>, [
[part1, casingCopper, casingCopper],
[generator, motor, <ic2:crafting:29>],
[part1, casingCopper, casingCopper]]);

recipes.addShaped("ct_ic2_reactorchamber", <ic2:te:24>, [
[casingLead, <ore:plateLead>, casingLead],
[<ore:plateLead>, <immersiveengineering:metal_decoration0:7>, <ore:plateLead>],
[casingLead, <ore:plateLead>, casingLead]]);

recipes.addShaped("ct_ic2_reactorgenerator", <ic2:te:6>, [
[casingCopper, casingCopper, casingCopper],
[casingCopper, <ic2:te:24>, casingCopper],
[part1, generator, part1]]);

recipes.addShaped("ct_ic2_semifluidgenerator", <ic2:te:7>, [
[casingBronze, casingBronze, casingBronze],
[<ic2:te:131>.withTag({}), <ic2:te:4>, <ic2:te:131>.withTag({})],
[casingBronze, casingBronze, casingBronze]]);

recipes.addShaped("ct_ic2_basicsolar", <ic2:te:8>, [
[<enderio:item_material:3>,<enderio:item_material:3>,<enderio:item_material:3>],
[part1, <minecraft:daylight_detector>, part1],
[<ore:circuitBasic>, generator, <ore:circuitBasic>]]);

recipes.addShaped("ct_ic2_stirlinggenerator", <ic2:te:9>, [
[casingIron, heatconductor, casingIron],
[casingIron, <minecraft:piston>, casingIron],
[part1, generator, part1]]);
