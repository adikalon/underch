underch.slime = {}
--{a = 103, r = 30, g = 60, b = 90}
function underch.slime.regiser_slime(id, colour, found_in, names)
	local eye = "underch:" .. id .. "eye_item"
	local eye_block = "underch:" .. id .. "eye_block"
	local source = "underch:" .. id .. "_slime_source"
	local flowing = "underch:" .. id .. "_slime_flowing"

	minetest.register_craftitem(eye, {
		description = names.eye,
		inventory_image = "underch_" .. id .. "_eye_item.png"
	})

	minetest.register_node(eye_block, {
		description = names.eye_block,
		tiles = {"underch_" .. id .. "_eye_block.png"},
		groups = {oddly_breakable_by_hand = 2},
		is_ground_content = false,
		sounds = default.node_sound_dirt_defaults(),
	})

	minetest.register_node("underch:" .. id .. "_slimy_block", {
		description = names.slimy_block,
		tiles = {"underch_" .. id .. "_slimy_block.png"},
		groups = {crumbly = 1, cracky = 2, jit_shadow = 1},
		after_dig_node = underch.jit.dig_shadow,
		sounds = default.node_sound_dirt_defaults(),
	})

	minetest.register_node("underch:" .. id .. "_eye_ore", {
		description = names.eye_ore,
		tiles = {"underch_" .. id .. "_slimy_eye.png"},
		groups = {crumbly = 1, cracky = 2, jit_shadow = 1},
		after_dig_node = underch.jit.dig_shadow,
		sounds = default.node_sound_dirt_defaults(),
		drop = eye
	})

	minetest.register_craft({
		output = eye_block,
		recipe = {
			{eye, eye, eye},
			{eye, eye, eye},
			{eye, eye, eye},
		}
	})

	minetest.register_craft({
		output = eye .. " 9",
		type = "shapeless",
		recipe = {eye_block}
	})

--[[	minetest.register_craft({
		output = "underch:" .. id .. "_slime_brick",
		type = "cooking",
		recipe = "underch:" .. id .. "_slimy_block"
	})--]]

	minetest.register_node(source, {
		description = names.slime_source,
		drawtype = "liquid",
		tiles = {"underch_" .. id .. "_slime.png"},
		special_tiles = {"underch_" .. id .. "_slime.png"},
		paramtype = "light",
		walkable = false,
		pointable = false,
		diggable = false,
		buildable_to = true,
		is_ground_content = false,
		drop = "",
		drowning = 1,
		liquidtype = "source",
		liquid_alternative_flowing = flowing,
		liquid_alternative_source = source,
		liquid_viscosity = 12,
		liquid_renewable = false,
		post_effect_color = colour,
		groups = {not_in_creative_inventory = 1, water = 3, liquid = 3, puts_out_fire = 1, cools_lava = 1},
		sounds = default.node_sound_sand_defaults(),
	})

	minetest.register_node(flowing, {
		description = names.flowing_slime,
		drawtype = "flowingliquid",
		tiles = {"underch_" .. id .. "_slime.png"},
		special_tiles = {
			{
				name = "underch_" .. id .. "_slime_flowing.png",
				backface_culling = false,
				animation = {
					type = "vertical_frames",
					aspect_w = 16,
					aspect_h = 16,
					length = 6.0,
				},
			},
			{
				name = "underch_" .. id .. "_slime_flowing.png",
				backface_culling = true,
				animation = {
					type = "vertical_frames",
					aspect_w = 16,
					aspect_h = 16,
					length = 6.0,
				},
			},
		},
		paramtype = "light",
		paramtype2 = "flowingliquid",
		walkable = false,
		pointable = false,
		diggable = false,
		buildable_to = true,
		is_ground_content = false,
		liquid_renewable = false,
		drop = "",
		drowning = 12,
		liquidtype = "flowing",
		liquid_alternative_flowing = flowing,
		liquid_alternative_source = source,
		liquid_viscosity = 17,
		post_effect_color = colour,
		groups = {water = 3, liquid = 3, puts_out_fire = 1, not_in_creative_inventory = 1, cools_lava = 1},
		sounds = default.node_sound_sand_defaults(),
	})

	if underch.have_bucket then
		bucket.register_liquid(
			source,
			flowing,
			"underch:" .. id .. "_bucket",
			"underch_" .. id .. "_bucket.png",
			names.slime_bucket
		)
	end

	underch.functions.register_stairs(
		id .. "_slimy_block",
		{crumbly = 1, cracky = 2},
		{"underch_" .. id .. "_slimy_block.png"},
		names.slimy_block,
		default.node_sound_dirt_defaults(),
		{
			stair = names.stair,
			slab = names.slab,
			inner = names.inner,
			outer = names.outer,
		}
	)

	underch.dynamic.register_flooder(names.dynamic_slime, id .. "_slime", found_in, source,
		underch.dynamic.all_sides, 100)

	underch.dynamic.register_flooder(names.dynamic_slimy_block, id .. "_slimy_block", found_in,
		"underch:" .. id .. "_slimy_block", underch.dynamic.all_sides, 100,
		{{block = "underch:" .. id .. "_eye_ore", chance = 1/10}})
end

underch.slime.regiser_slime(
	"black",
	{a = 210, r = 0, g = 0, b = 0},
	"underch:slate",
	{
		eye = underch.S("Black Eye"),
		eye_block = underch.S("Black Eye Block"),
		slimy_block = underch.S("Black Slimy Block"),
		eye_ore = underch.S("Black Eye Ore"),
		slime_source = underch.S("Black Slime Source"),
		flowing_slime = underch.S("Black Flowing Slime"),
		slime_bucket = underch.S("Black Slime Bucket"),
		stair = underch.S("Black Slime Block Stair"),
		slab = underch.S("Black Slime Block Slab"),
		inner = underch.S("Inner Black Slime Block Stair"),
		outer = underch.S("Outer Black Slime Block Stair"),
		dynamic_slime = underch.S("Dynamic Black Slime"),
		dynamic_slimy_block = underch.S("Dynamic Black Slimy Block"),
	}
)

underch.slime.regiser_slime(
	"green",
	{a = 210, r = 20, g = 160, b = 0},
	"underch:green_slimestone",
	{
		eye = underch.S("Green Eye"),
		eye_block = underch.S("Green Eye Block"),
		slimy_block = underch.S("Green Slimy Block"),
		eye_ore = underch.S("Green Eye Ore"),
		slime_source = underch.S("Green Slime Source"),
		flowing_slime = underch.S("Green Flowing Slime"),
		slime_bucket = underch.S("Green Slime Bucket"),
		stair = underch.S("Green Slime Block Stair"),
		slab = underch.S("Green Slime Block Slab"),
		inner = underch.S("Inner Green Slime Block Stair"),
		outer = underch.S("Outer Green Slime Block Stair"),
		dynamic_slime = underch.S("Dynamic Green Slime"),
		dynamic_slimy_block = underch.S("Dynamic Green Slimy Block"),
	}
)

underch.slime.regiser_slime(
	"purple",
	{a = 210, r = 160, g = 0, b = 200},
	"underch:purple_slimestone",
	{
		eye = underch.S("Purple Eye"),
		eye_block = underch.S("Purple Eye Block"),
		slimy_block = underch.S("Purple Slimy Block"),
		eye_ore = underch.S("Purple Eye Ore"),
		slime_source = underch.S("Purple Slime Source"),
		flowing_slime = underch.S("Purple Flowing Slime"),
		slime_bucket = underch.S("Purple Slime Bucket"),
		stair = underch.S("Purple Slime Block Stair"),
		slab = underch.S("Purple Slime Block Slab"),
		inner = underch.S("Inner Purple Slime Block Stair"),
		outer = underch.S("Outer Purple Slime Block Stair"),
		dynamic_slime = underch.S("Dynamic Purple Slime"),
		dynamic_slimy_block = underch.S("Dynamic Purple Slimy Block"),
	}
)

underch.slime.regiser_slime(
	"red",
	{a = 210, r = 160, g = 0, b = 30},
	"underch:red_slimestone",
	{
		eye = underch.S("Red Eye"),
		eye_block = underch.S("Red Eye Block"),
		slimy_block = underch.S("Red Slimy Block"),
		eye_ore = underch.S("Red Eye Ore"),
		slime_source = underch.S("Red Slime Source"),
		flowing_slime = underch.S("Red Flowing Slime"),
		slime_bucket = underch.S("Red Slime Bucket"),
		stair = underch.S("Red Slime Block Stair"),
		slab = underch.S("Red Slime Block Slab"),
		inner = underch.S("Inner Red Slime Block Stair"),
		outer = underch.S("Outer Red Slime Block Stair"),
		dynamic_slime = underch.S("Dynamic Red Slime"),
		dynamic_slimy_block = underch.S("Dynamic Red Slimy Block"),
	}
)

minetest.register_craft({
	recipe = "underch:green_slimy_block",
	type = "cooking",
	output = "underch:green_slimestone"
})

minetest.register_craft({
	recipe = "underch:purple_slimy_block",
	type = "cooking",
	output = "underch:purple_slimestone"
})

minetest.register_craft({
	recipe = "underch:red_slimy_block",
	type = "cooking",
	output = "underch:red_slimestone"
})

minetest.register_craft({
	recipe = "underch:black_slimy_block",
	type = "cooking",
	output = "underch:slate"
})
