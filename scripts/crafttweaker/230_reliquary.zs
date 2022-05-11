import mods.thaumcraft.Infusion;
import mods.botania.RuneAltar;
import crafttweaker.item.IIngredient;
import crafttweaker.enchantments.IEnchantmentDefinition;

//mods.botania.RuneAltar.addRecipe(IItemStack output, IIngredient[] input, int mana);
//mods.thaumcraft.Infusion.registerRecipe(String name, String research, IItemStack output, int instability, CTAspectStack[] aspects, IIngredient centralItem, IIngredient[] recipe);
mods.thaumcraft.Infusion.registerRecipe("ct_tcinfusion_reliquary_cross", "INFUSION", <xreliquary:mercy_cross>, 2, [<aspect:aversio> * 20, <aspect:exanimis> * 15], <minecraft:golden_sword>, [<xreliquary:mob_ingredient:6>, <xreliquary:mob_ingredient>, <xreliquary:mob_ingredient:1>, <minecraft:skull:1>]);
mods.thaumcraft.Infusion.registerRecipe("ct_tcinfusion_reliquary_chalice", "INFUSION", <xreliquary:emperor_chalice>, 1, [<aspect:aqua> * 30, <aspect:vacuos> * 10], <minecraft:water_bucket>, [<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alkimia"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alkimia"}]}), <xreliquary:void_tear>, <ore:plateGold>]);
mods.thaumcraft.Infusion.registerRecipe("ct_tcinfusion_reliquary_enderstaff", "INFUSION", <xreliquary:ender_staff>, 2, [<aspect:motus> * 20, <aspect:alienis> * 10, <aspect:sensus> * 10], <minecraft:end_rod>, [<minecraft:ender_eye>, <xreliquary:mob_ingredient:5>, <xreliquary:mob_ingredient:5>, <xreliquary:void_tear>, <xreliquary:mob_ingredient:11>]);
mods.thaumcraft.Infusion.registerRecipe("ct_tcinfusion_reliquary_fortunecoin", "INFUSION", <xreliquary:fortune_coin>, 0, [<aspect:desiderium> * 30, <aspect:motus> * 15], <ore:itemPulsatingCrystal>, [<ore:plateGold>, <xreliquary:mob_ingredient:5>, <xreliquary:mob_ingredient:4>, <xreliquary:mob_ingredient:11>]);
mods.thaumcraft.Infusion.registerRecipe("ct_tcinfusion_reliquary_glacialstaff", "INFUSION", <xreliquary:glacial_staff>, 3, [<aspect:gelum> * 60], <xreliquary:ice_magus_rod>, [<ore:runeWinterB>, <xreliquary:mob_ingredient:10>, <netherex:coolmar_spider_fang>, <ore:rodBlizz>, <futuremc:blue_ice>, <minecraft:snowball>]);
mods.thaumcraft.Infusion.registerRecipe("ct_tcinfusion_reliquary_icestaff", "INFUSION", <xreliquary:ice_magus_rod>, 0, [<aspect:gelum> * 20, <aspect:ordo> * 5], <ore:stickIron>, [<xreliquary:void_tear>, <minecraft:snowball>]);

//for enchantment in game.enchantments {
//  for i in 0 .. enchantment.maxLevel {
//    mods.thaumcraft.Infusion.registerRecipe("ct_tcinfusion_reliquary_magicbane", "INFUSION", <xreliquary:magicbane>, 5, [<aspect:aversio> * 40, <aspect:praecantatio> * 20], <minecraft:golden_sword>, [<thaumcraft:fabric>, <thaumcraft:fabric>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: enchantment.id}]}), <xreliquary:mob_ingredient:11>, <ore:eternalLifeEssence>, <ore:eternalLifeEssence>]);
//  }
//}

mods.thaumcraft.Infusion.registerRecipe("ct_tcinfusion_reliquary_magicbane", "INFUSION", <xreliquary:magicbane>, 5, [<aspect:aversio> * 40, <aspect:praecantatio> * 20], <minecraft:golden_sword>, [<thaumcraft:fabric>, <thaumcraft:fabric>, <minecraft:enchanted_book>, <xreliquary:mob_ingredient:11>, <ore:eternalLifeEssence>, <ore:eternalLifeEssence>]);
