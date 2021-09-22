#
# There is probably no good reason to use make for this but stfu I like make.
#

parser_location = JSONtoList.jar
generate_comments = false

all: biomes blocks floors items recipes achievements entity_metadata status_effect_metadata

biomes:
	java -jar $(parser_location) Biomes.json $(generate_comments)
	@echo Parsed Biomes.json

blocks: 
	java -jar $(parser_location) Blocks.json $(generate_comments)
	@echo Parsed Blocks.json

floors:
	java -jar $(parser_location) Floors.json $(generate_comments)
	@echo Parsed Floors.json

items:
	java -jar $(parser_location) Items.json $(generate_comments)
	@echo Parsed Items.json

recipes:
	java -jar $(parser_location) Recipes.json $(generate_comments)
	@echo Parsed Recipes.json

achievements:
	java -jar $(parser_location) Achievements.json $(generate_comments)
	@echo Parsed Achievements.json

entity_metadata:
	java -jar $(parser_location) EntityMetadata.json $(generate_comments)
	@echo Parsed EntityMetadata.json

status_effect_metadata:
	java -jar $(parser_location) StatusEffectMetadata.json $(generate_comments)
	@echo Parsed EntityMetadata.json
