var brickItem = <ore:ingotBrickNether>;
var brickBlock = <minecraft:nether_brick>;
var stick = <ore:stickWood>;
var wood = <ore:plankWood>;
var acacia = <quark:vertical_planks:4>;
var darkOak = <quark:vertical_planks:5>;
var limePlaster = <earthworks:item_lime_plaster>;

// Fix Nether Brick Wall Recipe
recipes.removeByRecipeName("minecraft:nether_brick_fence");
recipes.removeByRecipeName("nex:vanilla_wall_1");

recipes.addShaped("proper_nether_fence", <minecraft:nether_brick_fence> * 2,
	[[brickItem, brickItem, brickItem],
	[brickItem, brickItem, brickItem]]);
recipes.addShaped("proper_nether_wall", <nex:vanilla_wall:1> * 6,
	[[brickBlock, brickBlock, brickBlock],
	[brickBlock, brickBlock, brickBlock]]);

// Fix Earthworks Acacia and Dark Oak Recipes
recipes.removeByRecipeName("earthworks:itemslab_planks_vert_quark5");
recipes.removeByRecipeName("earthworks:fence_planks_vert_quark4");

recipes.addShaped("proper_acacia_fence", <earthworks:fence_planks_vert_acacia> * 6,
	[[acacia, stick, acacia],
	[acacia, stick, acacia]]);

recipes.addShaped("proper_dark_oak_slab", <earthworks:itemslab_planks_vert_dark_oak> * 6,
	[[darkOak, darkOak, darkOak]]);

// Fix Lath and Plaster not using oredict wood
recipes.removeByRecipeName("earthworks:block_plaster");
recipes.addShaped("proper_lath_plaster", <earthworks:block_plaster>,
	[[null, limePlaster, null],
	[limePlaster, wood, limePlaster],
	[null, limePlaster, null]]);

// Oredict custom chunks so the blast furnace can use them
<ore:oreIron>.add(<contenttweaker:iron_chunk>);
<ore:oreGold>.add(<contenttweaker:gold_chunk>);