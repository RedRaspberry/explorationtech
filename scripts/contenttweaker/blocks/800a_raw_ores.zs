#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.ItemList;

val metals = ["iron", "copper", "gold", "tin", "lead", "silver", "nickel", "aluminum", "titanium", "osmium", "uranium", "iridium"] as string[];

for item in metals {
var i = mods.contenttweaker.VanillaFactory.createBlock("blockraw"+item, <blockmaterial:iron>);
i.register();
}
