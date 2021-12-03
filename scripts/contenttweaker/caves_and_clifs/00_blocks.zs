#loader contenttweaker

var amethyst = VanillaFactory.createBlock("amethyst", <blockmaterial:rock>);

amethyst.setBlockHardness(4.0);
amethyst.setBlockResistance(4.0);
amethyst.setToolClass("pickaxe");
amethyst.setBlockSoundType(<soundtype:glass>);
amethyst.register();

var tuff = VanillaFactory.createBlock("tuff", <blockmaterial:rock>);

tuff.setBlockHardness(5.0);
tuff.setBlockResistance(4.0);
tuff.setToolClass("pickaxe");
tuff.setBlockSoundType(<soundtype:stone>);
tuff.register();

var deepslate = VanillaFactory.createBlock("deepslate", <blockmaterial:rock>);

deepslate.setBlockHardness(6.0);
deepslate.setBlockResistance(5.0);
deepslate.setToolClass("pickaxe");
deepslate.setBlockSoundType(<soundtype:stone>);
deepslate.register();
