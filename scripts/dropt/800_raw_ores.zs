import mods.dropt.Dropt;

Dropt.list("rawores")
  .add(Dropt.rule()
      .matchBlocks(["minecraft:iron_ore"])
      .addDrop(Dropt.drop()
          .items([<contenttweaker:rawiron>])
      )
  );