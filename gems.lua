underch.gems = {}

function underch.gems.register_gem(id, base, names)
	local block = "underch:" .. id .. "_block"
	local item = "underch:" .. id

	minetest.register_craftitem(item, {
		description = names.name,
		inventory_image = "underch_" .. id .. ".png"
	})

	minetest.register_node(block, {
		description = names.block,
		tiles = {"underch_" .. id .. "_block.png"},
		groups = {cracky = 3, jit_shadow = 1},
		after_dig_node = underch.jit.dig_shadow,
		is_ground_content = false,
		sounds = default.node_sound_glass_defaults(),
	})

	minetest.register_node("underch:" .. id .. "_ore", {
		description = names.ore,
		tiles = {base .. "^underch_" .. id .."_ore.png"},
		groups = {cracky=2},
		drop = item,
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node("underch:" .. id .. "_crystal", {
		description = names.crystal,
		tiles = {"underch_" .. id .. "_crystal.png"},
		groups = {cracky = 2},
		paramtype = "light",
		paramtype2 = "facedir",
		drawtype = "mesh",
		mesh = "underch_crystal.obj",
		light_source = 4,
		is_ground_content = false,
		sounds = default.node_sound_glass_defaults(),
	})

	minetest.register_craft({
		output = block,
		recipe = {
			{item, item, item},
			{item, item, item},
			{item, item, item}
		}
	})

	minetest.register_craft({
		output = item .. " 9",
		type = "shapeless",
		recipe = {block}
	})

	minetest.register_craft({
		output = item .. " 2",
		type = "shapeless",
		recipe = {"underch:" .. id .. "_crystal"}
	})

	underch.functions.register_stairs(
		id .. "_block",
		{cracky = 3},
		{"underch_" .. id .. "_block.png"},
		names.block,
		default.node_sound_glass_defaults(),
		{
			stair = names.stair,
			slab = names.slab,
			inner = names.inner,
			outer = names.outer,
		}
	)
end

underch.gems.register_gem("amethyst", "underch_diorite.png", {
	name = underch.S("Amethyst"),
	block = underch.S("Amethyst Block"),
	ore = underch.S("Amethyst Ore"),
	crystal = underch.S("Amethyst Crystal"),
	stair = underch.S("Amethyst Block Stair"),
	slab = underch.S("Amethyst Block Slab"),
	inner = underch.S("Inner Amethyst Block Stair"),
	outer = underch.S("Outer Amethyst Block Stair"),
});

underch.gems.register_gem("ruby", "underch_granite.png", {
	name = underch.S("Ruby"),
	block = underch.S("Ruby Block"),
	ore = underch.S("Ruby Ore"),
	crystal = underch.S("Ruby Crystal"),
	stair = underch.S("Ruby Block Stair"),
	slab = underch.S("Ruby Block Slab"),
	inner = underch.S("Inner Ruby Block Stair"),
	outer = underch.S("Outer Ruby Block Stair"),
});

underch.gems.register_gem("emerald", "underch_phonolite.png", {
	name = underch.S("Emerald"),
	block = underch.S("Emerald Block"),
	ore = underch.S("Emerald Ore"),
	crystal = underch.S("Emerald Crystal"),
	stair = underch.S("Emerald Block Stair"),
	slab = underch.S("Emerald Block Slab"),
	inner = underch.S("Inner Emerald Block Stair"),
	outer = underch.S("Outer Emerald Block Stair"),
});

underch.gems.register_gem("saphire", "underch_gneiss.png", {
	name = underch.S("Saphire"),
	block = underch.S("Saphire Block"),
	ore = underch.S("Saphire Ore"),
	crystal = underch.S("Saphire Crystal"),
	stair = underch.S("Saphire Block Stair"),
	slab = underch.S("Saphire Block Slab"),
	inner = underch.S("Inner Saphire Block Stair"),
	outer = underch.S("Outer Saphire Block Stair"),
});

underch.gems.register_gem("quartz", "underch_diorite.png", {
	name = underch.S("Quartz"),
	block = underch.S("Quartz Block"),
	ore = underch.S("Quartz Ore"),
	crystal = underch.S("Quartz Crystal"),
	stair = underch.S("Quartz Block Stair"),
	slab = underch.S("Quartz Block Slab"),
	inner = underch.S("Inner Quartz Block Stair"),
	outer = underch.S("Outer Quartz Block Stair"),
});

underch.gems.register_gem("aquamarine", "underch_diorite.png", {
	name = underch.S("Aquamarine"),
	block = underch.S("Aquamarine Block"),
	ore = underch.S("Aquamarine Ore"),
	crystal = underch.S("Aquamarine Crystal"),
	stair = underch.S("Aquamarine Block Stair"),
	slab = underch.S("Aquamarine Block Slab"),
	inner = underch.S("Inner Aquamarine Block Stair"),
	outer = underch.S("Outer Aquamarine Block Stair"),
});

minetest.register_node("underch:mese_crystal", {
	description = underch.S("Mese Crystal"),
	tiles = {"underch_mese_crystal.png"},
	groups = {cracky = 2},
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "mesh",
	mesh = "underch_crystal.obj",
	light_source = 4,
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = "default:mese_crystal 2",
	type = "shapeless",
	recipe = {"underch:mese_crystal"}
})
