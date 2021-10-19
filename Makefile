#
# There is probably no good reason to use make for this but stfu I like make.
#

build_location = build
raws_location = raws
parser_location = utils/JSONtoList.jar
generate_comments = false

all: assemble

raws: biomes blocks floors items recipes achievements entity_metadata status_effect_metadata

assemble: create_build_dir
	rm -f build/ScratchSurvival.sb3
	utils/openscratch assemble . build/ScratchSurvival.sb3

disassemble:
	utils/openscratch disassemble build/ScratchSurvival.sb3

biomes: create_build_dir
	java -jar $(parser_location) $(raws_location)/Biomes.json $(build_location)/Biomes.txt $(generate_comments)
	@echo Parsed Biomes.json

blocks:  create_build_dir
	java -jar $(parser_location) $(raws_location)/Blocks.json $(build_location)/Blocks.txt $(generate_comments)
	@echo Parsed Blocks.json

floors: create_build_dir
	java -jar $(parser_location) $(raws_location)/Floors.json $(build_location)/Floors.txt $(generate_comments)
	@echo Parsed Floors.json

items: create_build_dir
	java -jar $(parser_location) $(raws_location)/Items.json $(build_location)/Items.txt $(generate_comments)
	@echo Parsed Items.json

recipes: create_build_dir
	java -jar $(parser_location) $(raws_location)/Recipes.json $(build_location)/Recipes.txt $(generate_comments)
	@echo Parsed Recipes.json

achievements: create_build_dir
	java -jar $(parser_location) $(raws_location)/Achievements.json $(build_location)/Achievements.txt $(generate_comments)
	@echo Parsed Achievements.json

entity_metadata: create_build_dir
	java -jar $(parser_location) $(raws_location)/EntityMetadata.json $(build_location)/EntityMetadata.txt $(generate_comments)
	@echo Parsed EntityMetadata.json

status_effect_metadata: create_build_dir
	java -jar $(parser_location) $(raws_location)/StatusEffectMetadata.json $(build_location)/StatusEffectMetadata.txt $(generate_comments)
	@echo Parsed EntityMetadata.json

create_build_dir:
	mkdir -p $(build_location) 