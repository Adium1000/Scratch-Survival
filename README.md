# Dark Canvas
Data files for the Dark Canvas Scratch game.
To make the project faster and smaller, lots of stuff is stored in lists. All the block types, floor types, biomes, items and crafting recipes are stored in lists. To make life easier, I created human-readable JSON format that is parsed into TXT files that can be imported into Scratch.

## The basic format

Each JSON file corresponds to a list in the game. Blocks.json is ++BlockTypes, Items.json is ++ItemTypes.json, Floors.json is ++FloorTypes, Biomes.json is ++Biomes, Items.json is ++ItemTypes and Recipes.json is ++Recipes. Each JSON file has two parts: "Structure" and "Data", both are arrays of objects. The objects in structure define how the data objects will be parsed into the final TXT. If you want to edit or add a new block you need add a new object to the data array. Most of the values in these objects are self-explanitory but ask me on discord (Tacodude#2073) if you have any more complex questions. 
