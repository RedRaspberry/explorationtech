#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.ItemList;

val metals = ["iron", "copper", "gold", "tin", "lead", "silver", "nickel", "aluminum", "tungsten", "osmium", "uranium", "iridium", "zinc", "platinum", "cobalt", "ardite"] as string[];

for item in metals {
var i = mods.contenttweaker.VanillaFactory.createBlock("blockraw"+item, <blockmaterial:iron>);
i.register();
}
