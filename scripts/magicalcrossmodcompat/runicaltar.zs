import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

var petalandrunecolor = { <quark:rune>: <botania:petal>,
              <quark:rune:1>: <botania:petal:1>,
              <quark:rune:2>: <botania:petal:2>,
              <quark:rune:3>: <botania:petal:3>,
              <quark:rune:4>: <botania:petal:4>,
              <quark:rune:5>: <botania:petal:5>,
              <quark:rune:6>: <botania:petal:6>,
              <quark:rune:7>: <botania:petal:7>,
              <quark:rune:8>: <botania:petal:8>,
              <quark:rune:9>: <botania:petal:9>,
              <quark:rune:10>: <botania:petal:10>,
              <quark:rune:11>: <botania:petal:11>,
              <quark:rune:12>: <botania:petal:12>,
              <quark:rune:13>: <botania:petal:13>,
              <quark:rune:14>: <botania:petal:14>,
              <quark:rune:15>: <botania:petal:15>,
              <quark:rune:16>: <botania:petal:16>,
              }
              as IItemStack[IItemStack];
for rune, petal in petalandrunecolor {
  mods.botania.RuneAltar.addRecipe(rune, [petal, <botania:managlass>, <appliedenergistics2:material:7>, <minecraft:experience_bottle>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "instrumentum"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]})], 200);
}
mods.botania.RuneAltar.addRecipe(<botania:blacklotus>, [<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alienis"}]}), <botania:manaresource:16>, <botania:petal:10>, <botania:petal:15>, <botania:petal:15>, <xreliquary:mob_ingredient:11>], 200);
mods.botania.RuneAltar.addRecipe(<minecraft:golden_apple:1>, [<botania:manabottle>, <botania:manaresource:4>, <botania:manaresource:9>, <botania:manaresource:5>, <minecraft:golden_apple>], 100);
mods.botania.RuneAltar.addRecipe(<botania:blacklotus:1>, [<minecraft:dragon_breath>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}), <botania:manaresource:5>, <botania:blacklotus>], 150);
mods.botania.RuneAltar.addRecipe(<ebwizardry:resplendent_thread>, [<botania:rune:8>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praemunio"}]}), <hexxitgear:hexical_diamond>, <immersiveengineering:wirecoil:3>], 200);
mods.botania.RuneAltar.addRecipe(<ebwizardry:crystal_silver_plating>, [<botania:manaresource:8>, <immersiveengineering:metal:33>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aversio"}]}), <ebwizardry:grand_crystal>], 300);
mods.botania.RuneAltar.addRecipe(<ebwizardry:ethereal_crystalweave>, [<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitreus"}]}), <botania:manaresource:22>, <botania:manaresource:22>, <ebwizardry:grand_crystal>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "motus"}]})], 400);
