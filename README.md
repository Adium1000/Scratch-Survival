# Scratch Survival
Data files for the Scratch Survival game.

To make the project faster and smaller, lots of stuff is stored in lists. All the block types, floor types, biomes, items and crafting recipes are stored in lists. To make life easier, I created human-readable JSON format that is parsed into TXT files that can be imported into Scratch.

## The basic format

Each JSON file corresponds to a list in the game. Each JSON file has two parts: "Structure" and "Data", both are arrays of objects. The objects in structure define how the data objects will be parsed into the final TXT to be imported into Scratch. If you want to edit or add a new block you need add a new object to the *data* array.

 Most of the values in these objects are self-explanitory but create an issue if you have any more advanced questions.

 *Biomes.json* contains overworld and cave layer biomes.
 *Blocks.json* contains all the different types of blocks.
 *Floors.json* contains all the different types of floors.
 *Items.json* contains all the different types of items.
 *Recipes.json* contains the recipes for all different workstations. ( Hand crafting, Workbench, Furnace, etc. )

A lot of constants in the game are also stored in Scratch in a list called 'Raw: Constants'. In there you can change lots numbers that effect the game. Some things in there, however, should not be changed unless you really know what your doing so be careful!

## Building

This will quickly go through to process of importing these JSON files into the game. Sorry if this is conveluted or the error messages aren't very user friendly, these JSONs where made to make my life easier, not modding the game easier!

So you have modified some values and want to see your changes in action! To convert the JSON files into TXT files that can be imported into scratch you will need Java. Included with this project is `JSONtoList.jar`. This is a simple program wich converts these special JSON files to TXT files. It is run like this;
`java -jar JSONtoList.jar <JSON File>`
So if you have modified an item in `Items.json` you would run
`java -jar JSONtoList.jar Items.json`
Hopefully, you wont see any errors and the program will create a new `Items.txt` file! Now all you have to do is open scratch, find the list and import. Each JSON has a corrisponding list in the scratch project (see below). Find the one you want to change (in this case `Raw: Items`), show the list by checking the box next to it, right click on it in the stage, click `import` than find your generated TXT file. You will need to click the green flag again to see your hard work.

Your game should now be modified! 

Here are the names of the generated TXT files and their corresponding list.

| JSON File | TXT File | List
| ----------- | ----------- |  -----------
|Biomes.json|Biomes.txt|Raw: Biomes
|Blocks.json|Blocks.txt|Raw: Blocks
|Floors.json|Floors.txt|Raw: Floors
|Items.json|Items.txt|Raw: Items
|Recipes.json|Recipes.txt|Raw: Recipes
|Achievements.json|Achievements.txt|Raw: Achievements

## Extra Info
Some documentation on values, mostly so I don't forget.


#### Item Extra Data

Metadata about items.

| Item Type | TypeInfo[0] | TypeInfo[1] | TypeInfo[2]
| ----------- | ----------- |  ----------- |  ----------- | 
|Nothing
|Tool|Tool Type (ID)|Speed Multiplier
|Block|Block Type (ID)
|Floor|Floor Type (ID) 
|Sword|Swing Angle|Damage|Knockback
|Bow|Arrow Costume|Cooldown|Damage
|Helmet|Armour
|Chestplate|Armour
|Pants|Armour
|Boots|Armour
|Food|Food Restored
|Hoe
|Seeds|Crop Block (ID)
|Food+Seeds|Crop Block (ID)|Food Restored

*Food+Seeds* is a combination of 'Food' and 'Seeds'. Used for potatos as they can be eaten and planted.

#### Block Extra Data
Determines what extra data needs to be stored along with the block (like rotation, items, etc.) and how the player interacts with them.

| Block Type | TypeInfo[0] | TypeInfo[1] | TypeInfo[2]
| ----------- | ----------- |  ----------- |  ----------- | 
|Nothing
|Rotation
|CraftingStation|Crafting Station Type (ID)
|Storage|Storage Capacity
|MultiModeling|Model Count
|MultiModelingRotation|Model Count| 
|DownwardStairs
|UpwardStairs
|Crop|Growth Time|Model Count

*Rotation* is for blocks that can be rotated. Blocks generated naturally in the world will pick a random inital rotation.

*MultiModeling* is for blocks that can have more than one 'model'. Trees are an exmaple of this as all oak trees in the game have the same ID but look different. Blocks generated naturally in the world will pick a random model.

*MultiModelingRotation* is for blocks that have multiple models and can be rotated.

#### Extra IDs

**Tool Type**

0 -> Pickaxe
1 -> Axe
2 -> Shovel

**Crafting Station Type**

0 -> Inventory Crafting
1 -> Workbench
2 -> Furnace
3 -> Anvil
