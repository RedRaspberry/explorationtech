#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemList;
import mods.contenttweaker.Item;

val metals = ["iron", "copper", "gold", "tin", "lead", "silver", "nickel", "aluminum", "tungsten", "osmium", "uranium", "iridium", "cobalt", "ardite", "zinc", "platinum"] as string[];

for item in metals {
var i = mods.contenttweaker.VanillaFactory.createItem("raw"+item);
i.register();
}
