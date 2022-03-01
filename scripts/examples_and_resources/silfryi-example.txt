//Import
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;


//Remove Extraneous Recipes
recipes.remove(<modularmachinery:blockcasing:4>);
recipes.remove(<modularmachinery:blockcontroller>);


//Modular Machinery Casing Recipes
recipes.addShaped(<modularmachinery:blockcasing:1> * 2,
 [[<ore:plateTitanium>, <ore:fenceIron>, <ore:plateTitanium>],
 [<ore:fenceIron>, <techreborn:machine_casing:1>, <ore:fenceIron>],
 [<ore:plateTitanium>, <ore:fenceIron>, <ore:plateTitanium>]]);
recipes.addShaped(<modularmachinery:blockcasing:3> * 3,
 [[<ore:ingotTungsten>, <techreborn:cable:6>, <ore:ingotTungsten>],
 [<techreborn:cable:6>, <techreborn:machine_frame:1>, <techreborn:cable:6>],
 [<ore:ingotTungsten>, <techreborn:cable:6>, <ore:ingotTungsten>]]);
recipes.addShaped(<modularmachinery:blockcontroller>,
 [[<ore:plateTungsten>, <ore:circuitMaster>, <ore:plateTungsten>],
 [<ore:circuitElite>, <techreborn:machine_frame:2>, <ore:circuitElite>],
 [<ore:plateTungsten>, <ore:circuitMaster>, <ore:plateTungsten>]]);
recipes.addShaped(<modularmachinery:blockcasing:4> * 4,
 [[<ore:plateTungstensteel>, <ore:plateTungstensteel>, <ore:plateTungstensteel>],
 [<techreborn:part>, <techreborn:machine_frame:2>, <techreborn:part>],
 [<ore:plateTungstensteel>, <ore:plateTungstensteel>, <ore:plateTungstensteel>]]);



/*
  Arrays for MM Hatch Recipes
  Creates a hatch recipe with plates as corners,
  casings/coils as edges, and circuits as centers.
  Will work for arbitrary length lists, exceptions
  will need to be added seperately, however, and
  list length cannot exceed number of MM hatch tiers.
*/

//In the format of Name, Plate ID, Casing ID
var materialDefinitions = {"0-Bronze" : [<techreborn:plates:19>, <techreborn:machine_casing:0>],
                           "1-RefinedIron" : [<techreborn:plates:35>, <techreborn:machine_casing:0>],
                           "2-AdvancedAlloy" : [<techreborn:plates:36>, <techreborn:machine_casing:1>],
						   "3-Steel" : [<techreborn:plates:29>, <techreborn:machine_casing:1>],
						   "4-Aluminum" : [<techreborn:plates:17>, <techreborn:machine_casing:2>],
						   "5-Titanium" : [<techreborn:plates:31>, <techreborn:machine_casing:2>],
						   "6-Tungsten" : [<techreborn:plates:32>, <techreborn:fusion_coil>],
						   "7-TungstenSteel" : [<techreborn:plates:33>, <techreborn:fusion_coil>]
						   } as IIngredient[][string];

//In the format of Name, Circuit ID, Input Hatch ID, Output Hatch ID
var circuitTypesByHatch = {Item : [<techreborn:part:30>, <modularmachinery:blockinputbus>, <modularmachinery:blockoutputbus>],
                           Fluid : [<techreborn:part:1>, <modularmachinery:blockfluidinputhatch>, <modularmachinery:blockfluidoutputhatch>],
						   Energy : [<techreborn:part>, <modularmachinery:blockenergyinputhatch>, <modularmachinery:blockenergyoutputhatch>]
						   } as IItemStack[][string];

//Create And Remove Hatch Recipes
var tierNumber = 0;
for tier, ingredient in materialDefinitions {
    //Debug, prints to log # of tier, and name of tier
    print(materialDefinitions.entrySet[tierNumber].key[0]);
    print(materialDefinitions.entrySet[tierNumber].key);
	var hatchTierNumber = materialDefinitions.entrySet[tierNumber].key[0] as int;
	var typeNumber = 0;
	for type, ingredient in circuitTypesByHatch {
	    var material = materialDefinitions[tier][0];
	    var casing = materialDefinitions[tier][1];
		var circuit = circuitTypesByHatch[type][0];
		var hatchTypes = [circuitTypesByHatch[type][1].definition.makeStack(hatchTierNumber), circuitTypesByHatch[type][2].definition.makeStack(hatchTierNumber)] as IItemStack[];
		recipes.remove(hatchTypes[0]);
		recipes.remove(hatchTypes[1]);
		if materialDefinitions.entrySet[tierNumber].key[0] != 7 {
		    recipes.addShaped(hatchTypes[0],
		     [[material, casing, material],
		     [casing, circuit, casing],
		     [material, casing, material]]);
		}
		else {
		    if circuitTypesByHatch.entrySet[typeNumber].key != "Item" {
		        recipes.addShaped(hatchTypes[0],
		         [[material, casing, material],
		         [casing, circuit, casing],
		         [material, casing, material]]);
		    }
		}
		//Hatch Conversion Recipes
		recipes.addShapeless(hatchTypes[0], [hatchTypes[1]]);
		recipes.addShapeless(hatchTypes[1], [hatchTypes[0]]);
		typeNumber += 1;
	}
    tierNumber += 1;
}
