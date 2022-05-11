#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

#molten magic crystal fluid creation- recipes for this are elsewhere
val liquidCrystalMagic = mods.contenttweaker.VanillaFactory.createFluid("liquidCrystalMagic", Color.fromHex("CDBEEF"));
liquidCrystalMagic.density = 500;
liquidCrystalMagic.luminosity = 15;
liquidCrystalMagic.temperature = 1000;
liquidCrystalMagic.viscosity = 500;
liquidCrystalMagic.material = <blockmaterial:lava>;
liquidCrystalMagic.register();
