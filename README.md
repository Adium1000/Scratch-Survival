# Scratch Survival

This repo has two main 'parts'. The actual project itself and the data lists. The data 

## The Project

The project can be built into the SB3 on linux using the command `utils/openscratch assemble . build/ScratchSurvival.sb3`. If you're not on linux... good luck lmao. Get the openscratch executables from https://github.com/Tacodude7729/Open-Scratch/.

## The Data

To make the project faster and smaller, lots of stuff is stored in lists. All the block types, floor types, biomes, items and crafting recipes are stored in lists. To make life easier, I created human-readable JSON format that is parsed into TXT files that can be imported into Scratch. 

### Building the lists

Here are the names of the generated TXT files and their corresponding list.

| JSON File | TXT File | List
| ----------- | ----------- |  -----------
|Biomes.json|Biomes.txt|Raw: Biomes
|Blocks.json|Blocks.txt|Raw: Blocks
|Floors.json|Floors.txt|Raw: Floors
|Items.json|Items.txt|Raw: Items
|Recipes.json|Recipes.txt|Raw: Recipes
|Achievements.json|Achievements.txt|Raw: Achievements
|EntityMetadata.json|EntityMetadata.txt|Raw: Entity Meta
|StatusEffectMetadata.json|StatusEffectMetadata.txt|Raw: Status Effects

Note that `EntityMetadata.json` dosn't actually contain information about entity behaviour, that's all contained in the `Entities` sprite in the code.  Same goes for `StatusEffectMetadata.json`, but the actual code for status effects is scattered around.
### Extra Info
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
|PotionHealth|HP Restored
|PotionStatus|Status Effect (ID)|Strength|Duration

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
4 -> Brewing