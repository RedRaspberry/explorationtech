import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.hide;
import crafttweaker.item.IItemStack;

val fabric = <thaumcraft:fabric>;
val rune_air = <botania:rune:3>;
val elytra = <minecraft:elytra>;
val fairy_dust = <wings:fairy_dust>;

hide(<wings:fairy_dust_ore>);
hide(<wings:amethyst_ore>);
hide(<wings:amethyst>);
hide(<wings:bat_blood>);

recipes.removeByMod("wings");

recipes.addShapeless("ctFairyDust", fairy_dust,
[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "volatus"}]}), <ore:dustAerotheum>, <ore:elvenPixieDust>, <ebwizardry:grand_crystal>]);

recipes.addShaped("ctAngelWings", <wings:angel_wings>,
[[<ore:feather>, rune_air, <ore:feather>],
[fabric, elytra, fabric],
[fabric, fairy_dust, fabric]]);

recipes.addShaped("ctSlimeWings", <wings:slime_wings>,
[[<ore:slimeball>, rune_air, <ore:slimeball>],
[fabric, elytra, fabric],
[fabric, fairy_dust, fabric]]);

recipes.addShaped("ctBlueButterflyWings", <wings:blue_butterfly_wings>,
[[<botania:cosmetic:10>, rune_air, <botania:cosmetic:10>],
[fabric, elytra, fabric],
[fabric, fairy_dust, fabric]]);

recipes.addShapeless("ctBlueButterflyWingsFromMonarch", <wings:blue_butterfly_wings>,
[<wings:monarch_butterfly_wings>.anyDamage().marked("mark"), <ore:dyeBlue>],
function(out, ins, cInfo){
return ins.mark.withDamage(max(0, ins.mark.damage));
});

recipes.addShapeless("ctMonarchButterflyWingsFromBlue", <wings:monarch_butterfly_wings>,
[<wings:blue_butterfly_wings>.anyDamage().marked("mark"), <ore:dyeOrange>, <ore:dyeBlack>],
function(out, ins, cInfo){
return ins.mark.withDamage(max(0, ins.mark.damage));
});

recipes.addShaped("ctFireWings", <wings:fire_wings>,
[[<minecraft:blaze_powder>, rune_air, <minecraft:blaze_powder>],
[fabric, elytra, fabric],
[fabric, fairy_dust, fabric]]);

recipes.addShaped("ctBatWings", <wings:bat_wings>,
[[<xreliquary:mob_ingredient:5>, rune_air, <xreliquary:mob_ingredient:5>],
[fabric, elytra, fabric],
[fabric, fairy_dust, fabric]]);

recipes.addShaped("ctFairyWings", <wings:fairy_wings>,
[[fairy_dust, rune_air, fairy_dust],
[fabric, elytra, fabric],
[fabric, fairy_dust, fabric]]);

recipes.addShapedMirrored("ctEvilWings", <wings:evil_wings>,
[[<quark:soul_bead>, rune_air, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "mortuus"}]})],
[fabric, elytra, fabric],
[fabric, fairy_dust, fabric]]);

recipes.addShaped("ctDragonWings", <wings:dragon_wings>,
[[<rats:dragon_wing>, rune_air, <rats:dragon_wing>],
[fabric, elytra, fabric],
[fabric, fairy_dust, fabric]]);
