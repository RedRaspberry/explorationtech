#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.ItemList;

var blockEnergizedSignalum = VanillaFactory.createBlock("blockEnergizedSignalum", <blockmaterial:iron>);
blockEnergizedSignalum.register();
var blockBlazingInvar = VanillaFactory.createBlock("blockBlazingInvar", <blockmaterial:lava>);
blockBlazingInvar.register();
