#loader contenttweaker

var amethyst = VanillaFactory.createBlock("amethyst", <blockmaterial:rock>);

amethyst.setBlockHardness(4.0);
amethyst.setBlockResistance(4.0);
amethyst.setToolClass("pickaxe");
amethyst.setBlockSoundType(<soundtype:glass>);
amethyst.register();
