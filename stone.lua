underch.stone = {}
underch.stone.defs = {}

function underch.stone.register_stone(id, mossy, names)
	local base = "underch:" .. id
	local cobble = "underch:" .. id .. "_cobble"
	local brick = "underch:" .. id .. "_brick"
	local block = "underch:" .. id .. "_block"
	local with_coal = "underch:" .. id .. "_with_coal"
	local with_iron = "underch:" .. id .. "_with_iron"
	local with_copper = "underch:" .. id .. "_with_copper"
	local with_tin = "underch:" .. id .. "_with_tin"
	local with_mese = "underch:" .. id .. "_with_mese"
	local with_gold = "underch:" .. id .. "_with_gold"
	local with_diamond = "underch:" .. id .. "_with_diamond"
	local alien_mese_ore = "underch:" .. id .. "_alien_mese_ore"
	local alien_diamond_ore = "underch:" .. id .. "_alien_diamond_ore"
	local with_februm = "underch:" .. id .. "_with_februm"
	local with_egerum = "underch:" .. id .. "_with_egerum"

	minetest.register_node(base, {
		description = names.base,
		tiles = {"underch_" .. id .. ".png"},
		groups = {cracky = 3, stone = 1, smoothstone = 1, jit_shadow = 1},
		after_dig_node = underch.jit.dig_shadow,
		drop = cobble,
		legacy_mineral = true,
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(cobble, {
		description = names.cobble,
		tiles = {"underch_" .. id .. "_cobble.png"},
		is_ground_content = false,
		groups = {cracky = 3, stone = 2, cobble = 1, jit_shadow = 1},
		after_dig_node = underch.jit.dig_shadow,
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(brick, {
		description = names.bricks,
		paramtype2 = "facedir",
		place_param2 = 0,
		tiles = {"underch_" .. id .. "_brick.png"},
		is_ground_content = false,
		groups = {cracky = 2, stone = 1, stonebrick = 1},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(block, {
		description = names.block,
		tiles = {"underch_" .. id .."_block.png"},
		is_ground_content = false,
		groups = {cracky = 2, stone = 1, stoneblock = 1},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(with_coal, {
		description = names.coal,
		tiles = {"underch_" .. id .. ".png^default_mineral_coal.png"},
		groups = {cracky = 3},
		drop = "default:coal_lump",
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(with_iron, {
		description = names.iron,
		tiles = {"underch_" .. id .. ".png^default_mineral_iron.png"},
		groups = {cracky = 2},
		drop = "default:iron_lump",
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(with_copper, {
		description = names.copper,
		tiles = {"underch_" .. id .. ".png^default_mineral_copper.png"},
		groups = {cracky = 2},
		drop = "default:copper_lump",
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(with_tin, {
		description = names.tin,
		tiles = {"underch_" .. id .. ".png^default_mineral_tin.png"},
		groups = {cracky = 2},
		drop = "default:tin_lump",
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(with_mese, {
		description = names.mese,
		tiles = {"underch_" .. id .. ".png^default_mineral_mese.png"},
		groups = {cracky = 1},
		drop = "default:mese_crystal",
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(with_gold, {
		description = names.gold,
		tiles = {"underch_" .. id .. ".png^default_mineral_gold.png"},
		groups = {cracky = 2},
		drop = "default:gold_lump",
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(with_diamond, {
		description = names.diamond,
		tiles = {"underch_" .. id .. ".png^default_mineral_diamond.png"},
		groups = {cracky = 1},
		drop = "default:diamond",
		sounds = default.node_sound_stone_defaults(),
	})

	if underch.have_alien_material then
		minetest.register_node(alien_mese_ore, {
			description = names.alien_mese,
			tiles = {"underch_" .. id .. ".png^alien_mese_ore.png"},
			groups = {cracky = 1},
			is_ground_content = true,
			legacy_mineral = true,
			drop = "alien_material:alien_mese",
			sounds = default.node_sound_stone_defaults(),
		})

		minetest.register_node(alien_diamond_ore, {
			description = names.alien_diamond,
			tiles = {"underch_" .. id .. ".png^alien_diamond_ore.png"},
			groups = {cracky = 1},
			drop = "alien_material:alien_diamond",
			is_ground_content = true,
			legacy_mineral = true,
			sounds = default.node_sound_stone_defaults(),
		})
	end

	if underch.have_magic_materials then
		minetest.register_node(with_februm, {
			description = names.februm,
			tiles = {"underch_" .. id .. ".png^magic_materials_mineral_februm.png"},
			groups = {cracky = 1},
			drop = "magic_materials:februm_crystal",
			sounds = default.node_sound_stone_defaults(),
		})

		minetest.register_node(with_egerum, {
			description = names.egerum,
			tiles = {"underch_" .. id .. ".png^magic_materials_mineral_egerum.png"},
			groups = {cracky = 1},
			drop = "magic_materials:egerum_crystal",
			sounds = default.node_sound_stone_defaults(),
		})
	end

	--crafts
	minetest.register_craft({
		output = brick .. " 4",
		recipe = {
			{base, base},
			{base, base},
		}
	})

	minetest.register_craft({
		output = block .. " 9",
		recipe = {
			{base, base, base},
			{base, base, base},
			{base, base, base},
		}
	})

	minetest.register_craft({
		type = "cooking",
		output = base,
		recipe = cobble,
	})

	--stairs
	underch.functions.register_stairs(
		id,
		{cracky = 3},
		{"underch_" .. id .. ".png"},
		names.base,
		default.node_sound_stone_defaults(),
		{
			stair = names.stair.base.stair,
			slab = names.stair.base.slab,
			inner = names.stair.base.inner,
			outer = names.stair.base.outer,
		}
	)

	underch.functions.register_stairs(
		id .. "_cobble",
		{cracky = 3, cobblestairs = 1},
		{"underch_" .. id .. "_cobble.png"},
		names.cobble,
		default.node_sound_stone_defaults(),
		{
			stair = names.stair.cobble.stair,
			slab = names.stair.cobble.slab,
			inner = names.stair.cobble.inner,
			outer = names.stair.cobble.outer,
		}
	)

	underch.functions.register_stairs(
		id .. "_brick",
		{cracky = 3},
		{"underch_" .. id .. "_brick.png"},
		names.bricks,
		default.node_sound_stone_defaults(),
		{
			stair = names.stair.bricks.stair,
			slab = names.stair.bricks.slab,
			inner = names.stair.bricks.inner,
			outer = names.stair.bricks.outer,
		}
	)

	underch.functions.register_stairs(
		id .. "_block",
		{cracky = 3},
		{"underch_" .. id .. "_block.png"},
		names.block,
		default.node_sound_stone_defaults(),
		{
			stair = names.stair.block.stair,
			slab = names.stair.block.slab,
			inner = names.stair.block.inner,
			outer = names.stair.block.outer,
		}
	)

	underch.stone.defs[id] = {}
	underch.stone.defs[id].base = minetest.get_content_id(base)
	underch.stone.defs[id].cobble = minetest.get_content_id(cobble)
	underch.stone.defs[id].with_coal = minetest.get_content_id(with_coal)
	underch.stone.defs[id].with_iron = minetest.get_content_id(with_iron)
	underch.stone.defs[id].with_copper = minetest.get_content_id(with_copper)
	underch.stone.defs[id].with_tin = minetest.get_content_id(with_tin)
	underch.stone.defs[id].with_gold = minetest.get_content_id(with_gold)
	underch.stone.defs[id].with_diamond = minetest.get_content_id(with_diamond)

	if underch.have_alien_material then
		underch.stone.defs[id].alien_mese_ore = minetest.get_content_id(alien_mese_ore)
		underch.stone.defs[id].alien_diamond_ore = minetest.get_content_id(alien_diamond_ore)
	end

	if underch.have_magic_materials then
		underch.stone.defs[id].with_februm = minetest.get_content_id(with_februm)
		underch.stone.defs[id].with_egerum = minetest.get_content_id(with_egerum)
	end

	if (mossy ~= nil) then
		local mossy_cobble = "underch:" .. id .. "_mossy_cobble"
		minetest.register_node(mossy_cobble, {
			description = names.mossy_cobble,
			tiles = {"underch_" .. id .. "_mossy_cobble.png"},
			is_ground_content = false,
			groups = {cracky = 3, stone = 1, mossycobble = 1, jit_shadow = 1},
			after_dig_node = underch.jit.dig_shadow,
			sounds = default.node_sound_stone_defaults(),
		})

		minetest.register_craft({
			type = "cooking",
			output = base,
			recipe = mossy_cobble,
		})

		underch.functions.register_stairs(
			id .. "_mossy_cobble",
			{cracky = 3},
			{"underch_" .. id .. "_mossy_cobble.png"},
			names.mossy_cobble,
			default.node_sound_stone_defaults(),
			{
				stair = names.stair.mossy_cobble.stair,
				slab = names.stair.mossy_cobble.slab,
				inner = names.stair.mossy_cobble.inner,
				outer = names.stair.mossy_cobble.outer,
			}
		)

		if walls ~= nil then
			walls.register(mossy_cobble .. "_wall", names.wall_mossy_cobble,
				{"underch_" .. id .. "_mossy_cobble.png"}, mossy_cobble, default.node_sound_stone_defaults())
		end

		underch.stone.defs[id].mossy = minetest.get_content_id(mossy_cobble)
		underch.stone.defs[id].mossy_variant = true
	else
		underch.stone.defs[id].mossy = underch.stone.defs[id].cobble
		underch.stone.defs[id].mossy_variant = false
	end

	if underch.have_stairsredo or underch.have_moreblocks then
		underch.stone.defs[id].stair = minetest.get_content_id("underch:stair_" .. id .. "_cobble")
	elseif underch.have_stairs then
		underch.stone.defs[id].stair = minetest.get_content_id("stairs:stair_" .. id .. "_cobble")
	else
		underch.stone.defs[id].stair = nil
	end

	if walls ~= nil then
		walls.register(cobble .. "_wall", names.wall_cobble, {"underch_" .. id .. "_cobble.png"},
			cobble, default.node_sound_stone_defaults())
	end

	if underch.have_advtrains then
		advtrains.register_platform("underch", base)
		advtrains.register_platform("underch", block)
		advtrains.register_platform("underch", brick)
	end
end

underch.stone.register_stone("afualite", nil, {
	base = underch.S("Afualite"),
	cobble = underch.S("Afualite Cobble"),
	bricks = underch.S("Afualite Brick"),
	block = underch.S("Afualite Block"),
	coal = underch.S("Afualite Coal Ore"),
	iron = underch.S("Afualite Iron Ore"),
	copper = underch.S("Afualite Copper Ore"),
	tin = underch.S("Afualite Tin Ore"),
	mese = underch.S("Afualite Mese Ore"),
	gold = underch.S("Afualite Gold Ore"),
	diamond = underch.S("Afualite Diamond Ore"),
	alien_mese = underch.S("Afualite Alien Mese Ore"),
	alien_diamond = underch.S("Afualite Alien Diamond Ore"),
	februm = underch.S("Afualite Febdrum Ore"),
	egerum = underch.S("Afualite Egerum Ore"),
	mossy_cobble = underch.S(""),
	wall_mossy_cobble = underch.S(""),
	wall_cobble = underch.S("Afualite Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Afualite Stair"),
			slab = underch.S("Afualite Slab"),
			inner = underch.S("Inner Afualite Stair"),
			outer = underch.S("Outer Afualite Stair"),
		},
		cobble = {
			stair = underch.S("Afualite Cobble Stair"),
			slab = underch.S("Afualite Cobble Slab"),
			inner = underch.S("Inner Afualite Cobble Stair"),
			outer = underch.S("Outer Afualite Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Afualite Bricks Stair"),
			slab = underch.S("Afualite Bricks Slab"),
			inner = underch.S("Inner Afualite Bricks Stair"),
			outer = underch.S("Outer Afualite Bricks Stair"),
		},
		block = {
			stair = underch.S("Afualite Block Stair"),
			slab = underch.S("Afualite Block Slab"),
			inner = underch.S("Inner Afualite Block Stair"),
			outer = underch.S("Outer Afualite Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S(""),
			slab = underch.S(""),
			inner = underch.S(""),
			outer = underch.S(""),
		},
	},
})

underch.stone.register_stone("amphibolite", "Mossy", {
	base = underch.S("Amphibolite"),
	cobble = underch.S("Amphibolite Cobble"),
	bricks = underch.S("Amphibolite Brick"),
	block = underch.S("Amphibolite Block"),
	coal = underch.S("Amphibolite Coal Ore"),
	iron = underch.S("Amphibolite Iron Ore"),
	copper = underch.S("Amphibolite Copper Ore"),
	tin = underch.S("Amphibolite Tin Ore"),
	mese = underch.S("Amphibolite Mese Ore"),
	gold = underch.S("Amphibolite Gold Ore"),
	diamond = underch.S("Amphibolite Diamond Ore"),
	alien_mese = underch.S("Amphibolite Alien Mese Ore"),
	alien_diamond = underch.S("Amphibolite Alien Diamond Ore"),
	februm = underch.S("Amphibolite Febdrum Ore"),
	egerum = underch.S("Amphibolite Egerum Ore"),
	mossy_cobble = underch.S("Mossy Amphibolite Cobble"),
	wall_mossy_cobble = underch.S("Mossy Amphibolite Cobblestone Wall"),
	wall_cobble = underch.S("Amphibolite Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Amphibolite Stair"),
			slab = underch.S("Amphibolite Slab"),
			inner = underch.S("Inner Amphibolite Stair"),
			outer = underch.S("Outer Amphibolite Stair"),
		},
		cobble = {
			stair = underch.S("Amphibolite Cobble Stair"),
			slab = underch.S("Amphibolite Cobble Slab"),
			inner = underch.S("Inner Amphibolite Cobble Stair"),
			outer = underch.S("Outer Amphibolite Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Amphibolite Bricks Stair"),
			slab = underch.S("Amphibolite Bricks Slab"),
			inner = underch.S("Inner Amphibolite Bricks Stair"),
			outer = underch.S("Outer Amphibolite Bricks Stair"),
		},
		block = {
			stair = underch.S("Amphibolite Block Stair"),
			slab = underch.S("Amphibolite Block Slab"),
			inner = underch.S("Inner Amphibolite Block Stair"),
			outer = underch.S("Outer Amphibolite Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S("Mossy Amphibolite Cobble Stair"),
			slab = underch.S("Mossy Amphibolite Cobble Slab"),
			inner = underch.S("Inner Mossy Amphibolite Cobble Stair"),
			outer = underch.S("Outer Mossy Amphibolite Cobble Stair"),
		},
	},
})

underch.stone.register_stone("andesite", "Mossy", {
	base = underch.S("Andesite"),
	cobble = underch.S("Andesite Cobble"),
	bricks = underch.S("Andesite Brick"),
	block = underch.S("Andesite Block"),
	coal = underch.S("Andesite Coal Ore"),
	iron = underch.S("Andesite Iron Ore"),
	copper = underch.S("Andesite Copper Ore"),
	tin = underch.S("Andesite Tin Ore"),
	mese = underch.S("Andesite Mese Ore"),
	gold = underch.S("Andesite Gold Ore"),
	diamond = underch.S("Andesite Diamond Ore"),
	alien_mese = underch.S("Andesite Alien Mese Ore"),
	alien_diamond = underch.S("Andesite Alien Diamond Ore"),
	februm = underch.S("Andesite Febdrum Ore"),
	egerum = underch.S("Andesite Egerum Ore"),
	mossy_cobble = underch.S("Mossy Andesite Cobble"),
	wall_mossy_cobble = underch.S("Mossy Andesite Cobblestone Wall"),
	wall_cobble = underch.S("Andesite Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Andesite Stair"),
			slab = underch.S("Andesite Slab"),
			inner = underch.S("Inner Andesite Stair"),
			outer = underch.S("Outer Andesite Stair"),
		},
		cobble = {
			stair = underch.S("Andesite Cobble Stair"),
			slab = underch.S("Andesite Cobble Slab"),
			inner = underch.S("Inner Andesite Cobble Stair"),
			outer = underch.S("Outer Andesite Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Andesite Bricks Stair"),
			slab = underch.S("Andesite Bricks Slab"),
			inner = underch.S("Inner Andesite Bricks Stair"),
			outer = underch.S("Outer Andesite Bricks Stair"),
		},
		block = {
			stair = underch.S("Andesite Block Stair"),
			slab = underch.S("Andesite Block Slab"),
			inner = underch.S("Inner Andesite Block Stair"),
			outer = underch.S("Outer Andesite Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S("Mossy Andesite Cobble Stair"),
			slab = underch.S("Mossy Andesite Cobble Slab"),
			inner = underch.S("Inner Mossy Andesite Cobble Stair"),
			outer = underch.S("Outer Mossy Andesite Cobble Stair"),
		},
	},
})

underch.stone.register_stone("aplite", "Mossy", {
	base = underch.S("Aplite"),
	cobble = underch.S("Aplite Cobble"),
	bricks = underch.S("Aplite Brick"),
	block = underch.S("Aplite Block"),
	coal = underch.S("Aplite Coal Ore"),
	iron = underch.S("Aplite Iron Ore"),
	copper = underch.S("Aplite Copper Ore"),
	tin = underch.S("Aplite Tin Ore"),
	mese = underch.S("Aplite Mese Ore"),
	gold = underch.S("Aplite Gold Ore"),
	diamond = underch.S("Aplite Diamond Ore"),
	alien_mese = underch.S("Aplite Alien Mese Ore"),
	alien_diamond = underch.S("Aplite Alien Diamond Ore"),
	februm = underch.S("Aplite Febdrum Ore"),
	egerum = underch.S("Aplite Egerum Ore"),
	mossy_cobble = underch.S("Mossy Aplite Cobble"),
	wall_mossy_cobble = underch.S("Mossy Aplite Cobblestone Wall"),
	wall_cobble = underch.S("Aplite Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Aplite Stair"),
			slab = underch.S("Aplite Slab"),
			inner = underch.S("Inner Aplite Stair"),
			outer = underch.S("Outer Aplite Stair"),
		},
		cobble = {
			stair = underch.S("Aplite Cobble Stair"),
			slab = underch.S("Aplite Cobble Slab"),
			inner = underch.S("Inner Aplite Cobble Stair"),
			outer = underch.S("Outer Aplite Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Aplite Bricks Stair"),
			slab = underch.S("Aplite Bricks Slab"),
			inner = underch.S("Inner Aplite Bricks Stair"),
			outer = underch.S("Outer Aplite Bricks Stair"),
		},
		block = {
			stair = underch.S("Aplite Block Stair"),
			slab = underch.S("Aplite Block Slab"),
			inner = underch.S("Inner Aplite Block Stair"),
			outer = underch.S("Outer Aplite Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S("Mossy Aplite Cobble Stair"),
			slab = underch.S("Mossy Aplite Cobble Slab"),
			inner = underch.S("Inner Mossy Aplite Cobble Stair"),
			outer = underch.S("Outer Mossy Aplite Cobble Stair"),
		},
	},
})

underch.stone.register_stone("basalt", "Mossy", {
	base = underch.S("Basalt"),
	cobble = underch.S("Basalt Cobble"),
	bricks = underch.S("Basalt Brick"),
	block = underch.S("Basalt Block"),
	coal = underch.S("Basalt Coal Ore"),
	iron = underch.S("Basalt Iron Ore"),
	copper = underch.S("Basalt Copper Ore"),
	tin = underch.S("Basalt Tin Ore"),
	mese = underch.S("Basalt Mese Ore"),
	gold = underch.S("Basalt Gold Ore"),
	diamond = underch.S("Basalt Diamond Ore"),
	alien_mese = underch.S("Basalt Alien Mese Ore"),
	alien_diamond = underch.S("Basalt Alien Diamond Ore"),
	februm = underch.S("Basalt Febdrum Ore"),
	egerum = underch.S("Basalt Egerum Ore"),
	mossy_cobble = underch.S("Mossy Basalt Cobble"),
	wall_mossy_cobble = underch.S("Mossy Basalt Cobblestone Wall"),
	wall_cobble = underch.S("Basalt Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Basalt Stair"),
			slab = underch.S("Basalt Slab"),
			inner = underch.S("Inner Basalt Stair"),
			outer = underch.S("Outer Basalt Stair"),
		},
		cobble = {
			stair = underch.S("Basalt Cobble Stair"),
			slab = underch.S("Basalt Cobble Slab"),
			inner = underch.S("Inner Basalt Cobble Stair"),
			outer = underch.S("Outer Basalt Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Basalt Bricks Stair"),
			slab = underch.S("Basalt Bricks Slab"),
			inner = underch.S("Inner Basalt Bricks Stair"),
			outer = underch.S("Outer Basalt Bricks Stair"),
		},
		block = {
			stair = underch.S("Basalt Block Stair"),
			slab = underch.S("Basalt Block Slab"),
			inner = underch.S("Inner Basalt Block Stair"),
			outer = underch.S("Outer Basalt Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S("Mossy Basalt Cobble Stair"),
			slab = underch.S("Mossy Basalt Cobble Slab"),
			inner = underch.S("Inner Mossy Basalt Cobble Stair"),
			outer = underch.S("Outer Mossy Basalt Cobble Stair"),
		},
	},
})

underch.stone.register_stone("dark_vindesite", "Mossy", {
	base = underch.S("Dark Vindesite"),
	cobble = underch.S("Dark Vindesite Cobble"),
	bricks = underch.S("Dark Vindesite Brick"),
	block = underch.S("Dark Vindesite Block"),
	coal = underch.S("Dark Vindesite Coal Ore"),
	iron = underch.S("Dark Vindesite Iron Ore"),
	copper = underch.S("Dark Vindesite Copper Ore"),
	tin = underch.S("Dark Vindesite Tin Ore"),
	mese = underch.S("Dark Vindesite Mese Ore"),
	gold = underch.S("Dark Vindesite Gold Ore"),
	diamond = underch.S("Dark Vindesite Diamond Ore"),
	alien_mese = underch.S("Dark Vindesite Alien Mese Ore"),
	alien_diamond = underch.S("Dark Vindesite Alien Diamond Ore"),
	februm = underch.S("Dark Vindesite Febdrum Ore"),
	egerum = underch.S("Dark Vindesite Egerum Ore"),
	mossy_cobble = underch.S("Mossy Dark Vindesite Cobble"),
	wall_mossy_cobble = underch.S("Mossy Dark Vindesite Cobblestone Wall"),
	wall_cobble = underch.S("Dark Vindesite Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Dark Vindesite Stair"),
			slab = underch.S("Dark Vindesite Slab"),
			inner = underch.S("Inner Dark Vindesite Stair"),
			outer = underch.S("Outer Dark Vindesite Stair"),
		},
		cobble = {
			stair = underch.S("Dark Vindesite Cobble Stair"),
			slab = underch.S("Dark Vindesite Cobble Slab"),
			inner = underch.S("Inner Dark Vindesite Cobble Stair"),
			outer = underch.S("Outer Dark Vindesite Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Dark Vindesite Bricks Stair"),
			slab = underch.S("Dark Vindesite Bricks Slab"),
			inner = underch.S("Inner Dark Vindesite Bricks Stair"),
			outer = underch.S("Outer Dark Vindesite Bricks Stair"),
		},
		block = {
			stair = underch.S("Dark Vindesite Block Stair"),
			slab = underch.S("Dark Vindesite Block Slab"),
			inner = underch.S("Inner Dark Vindesite Block Stair"),
			outer = underch.S("Outer Dark Vindesite Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S("Mossy Dark Vindesite Cobble Stair"),
			slab = underch.S("Mossy Dark Vindesite Cobble Slab"),
			inner = underch.S("Inner Mossy Dark Vindesite Cobble Stair"),
			outer = underch.S("Outer Mossy Dark Vindesite Cobble Stair"),
		},
	},
})

underch.stone.register_stone("diorite", "Mossy", {
	base = underch.S("Diorite"),
	cobble = underch.S("Diorite Cobble"),
	bricks = underch.S("Diorite Brick"),
	block = underch.S("Diorite Block"),
	coal = underch.S("Diorite Coal Ore"),
	iron = underch.S("Diorite Iron Ore"),
	copper = underch.S("Diorite Copper Ore"),
	tin = underch.S("Diorite Tin Ore"),
	mese = underch.S("Diorite Mese Ore"),
	gold = underch.S("Diorite Gold Ore"),
	diamond = underch.S("Diorite Diamond Ore"),
	alien_mese = underch.S("Diorite Alien Mese Ore"),
	alien_diamond = underch.S("Diorite Alien Diamond Ore"),
	februm = underch.S("Diorite Febdrum Ore"),
	egerum = underch.S("Diorite Egerum Ore"),
	mossy_cobble = underch.S("Mossy Diorite Cobble"),
	wall_mossy_cobble = underch.S("Mossy Diorite Cobblestone Wall"),
	wall_cobble = underch.S("Diorite Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Diorite Stair"),
			slab = underch.S("Diorite Slab"),
			inner = underch.S("Inner Diorite Stair"),
			outer = underch.S("Outer Diorite Stair"),
		},
		cobble = {
			stair = underch.S("Diorite Cobble Stair"),
			slab = underch.S("Diorite Cobble Slab"),
			inner = underch.S("Inner Diorite Cobble Stair"),
			outer = underch.S("Outer Diorite Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Diorite Bricks Stair"),
			slab = underch.S("Diorite Bricks Slab"),
			inner = underch.S("Inner Diorite Bricks Stair"),
			outer = underch.S("Outer Diorite Bricks Stair"),
		},
		block = {
			stair = underch.S("Diorite Block Stair"),
			slab = underch.S("Diorite Block Slab"),
			inner = underch.S("Inner Diorite Block Stair"),
			outer = underch.S("Outer Diorite Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S("Mossy Diorite Cobble Stair"),
			slab = underch.S("Mossy Diorite Cobble Slab"),
			inner = underch.S("Inner Mossy Diorite Cobble Stair"),
			outer = underch.S("Outer Mossy Diorite Cobble Stair"),
		},
	},
})

underch.stone.register_stone("dolomite", "Mossy", {
	base = underch.S("Dolomite"),
	cobble = underch.S("Dolomite Cobble"),
	bricks = underch.S("Dolomite Brick"),
	block = underch.S("Dolomite Block"),
	coal = underch.S("Dolomite Coal Ore"),
	iron = underch.S("Dolomite Iron Ore"),
	copper = underch.S("Dolomite Copper Ore"),
	tin = underch.S("Dolomite Tin Ore"),
	mese = underch.S("Dolomite Mese Ore"),
	gold = underch.S("Dolomite Gold Ore"),
	diamond = underch.S("Dolomite Diamond Ore"),
	alien_mese = underch.S("Dolomite Alien Mese Ore"),
	alien_diamond = underch.S("Dolomite Alien Diamond Ore"),
	februm = underch.S("Dolomite Febdrum Ore"),
	egerum = underch.S("Dolomite Egerum Ore"),
	mossy_cobble = underch.S("Mossy Dolomite Cobble"),
	wall_mossy_cobble = underch.S("Mossy Dolomite Cobblestone Wall"),
	wall_cobble = underch.S("Dolomite Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Dolomite Stair"),
			slab = underch.S("Dolomite Slab"),
			inner = underch.S("Inner Dolomite Stair"),
			outer = underch.S("Outer Dolomite Stair"),
		},
		cobble = {
			stair = underch.S("Dolomite Cobble Stair"),
			slab = underch.S("Dolomite Cobble Slab"),
			inner = underch.S("Inner Dolomite Cobble Stair"),
			outer = underch.S("Outer Dolomite Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Dolomite Bricks Stair"),
			slab = underch.S("Dolomite Bricks Slab"),
			inner = underch.S("Inner Dolomite Bricks Stair"),
			outer = underch.S("Outer Dolomite Bricks Stair"),
		},
		block = {
			stair = underch.S("Dolomite Block Stair"),
			slab = underch.S("Dolomite Block Slab"),
			inner = underch.S("Inner Dolomite Block Stair"),
			outer = underch.S("Outer Dolomite Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S("Mossy Dolomite Cobble Stair"),
			slab = underch.S("Mossy Dolomite Cobble Slab"),
			inner = underch.S("Inner Mossy Dolomite Cobble Stair"),
			outer = underch.S("Outer Mossy Dolomite Cobble Stair"),
		},
	},
})

underch.stone.register_stone("emutite", nil, {
	base = underch.S("Emutite"),
	cobble = underch.S("Emutite Cobble"),
	bricks = underch.S("Emutite Brick"),
	block = underch.S("Emutite Block"),
	coal = underch.S("Emutite Coal Ore"),
	iron = underch.S("Emutite Iron Ore"),
	copper = underch.S("Emutite Copper Ore"),
	tin = underch.S("Emutite Tin Ore"),
	mese = underch.S("Emutite Mese Ore"),
	gold = underch.S("Emutite Gold Ore"),
	diamond = underch.S("Emutite Diamond Ore"),
	alien_mese = underch.S("Emutite Alien Mese Ore"),
	alien_diamond = underch.S("Emutite Alien Diamond Ore"),
	februm = underch.S("Emutite Febdrum Ore"),
	egerum = underch.S("Emutite Egerum Ore"),
	mossy_cobble = underch.S(""),
	wall_mossy_cobble = underch.S(""),
	wall_cobble = underch.S("Emutite Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Emutite Stair"),
			slab = underch.S("Emutite Slab"),
			inner = underch.S("Inner Emutite Stair"),
			outer = underch.S("Outer Emutite Stair"),
		},
		cobble = {
			stair = underch.S("Emutite Cobble Stair"),
			slab = underch.S("Emutite Cobble Slab"),
			inner = underch.S("Inner Emutite Cobble Stair"),
			outer = underch.S("Outer Emutite Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Emutite Bricks Stair"),
			slab = underch.S("Emutite Bricks Slab"),
			inner = underch.S("Inner Emutite Bricks Stair"),
			outer = underch.S("Outer Emutite Bricks Stair"),
		},
		block = {
			stair = underch.S("Emutite Block Stair"),
			slab = underch.S("Emutite Block Slab"),
			inner = underch.S("Inner Emutite Block Stair"),
			outer = underch.S("Outer Emutite Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S(""),
			slab = underch.S(""),
			inner = underch.S(""),
			outer = underch.S(""),
		},
	},
})

underch.stone.register_stone("gabbro", "Mossy", {
	base = underch.S("Gabbro"),
	cobble = underch.S("Gabbro Cobble"),
	bricks = underch.S("Gabbro Brick"),
	block = underch.S("Gabbro Block"),
	coal = underch.S("Gabbro Coal Ore"),
	iron = underch.S("Gabbro Iron Ore"),
	copper = underch.S("Gabbro Copper Ore"),
	tin = underch.S("Gabbro Tin Ore"),
	mese = underch.S("Gabbro Mese Ore"),
	gold = underch.S("Gabbro Gold Ore"),
	diamond = underch.S("Gabbro Diamond Ore"),
	alien_mese = underch.S("Gabbro Alien Mese Ore"),
	alien_diamond = underch.S("Gabbro Alien Diamond Ore"),
	februm = underch.S("Gabbro Febdrum Ore"),
	egerum = underch.S("Gabbro Egerum Ore"),
	mossy_cobble = underch.S("Mossy Gabbro Cobble"),
	wall_mossy_cobble = underch.S("Mossy Gabbro Cobblestone Wall"),
	wall_cobble = underch.S("Gabbro Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Gabbro Stair"),
			slab = underch.S("Gabbro Slab"),
			inner = underch.S("Inner Gabbro Stair"),
			outer = underch.S("Outer Gabbro Stair"),
		},
		cobble = {
			stair = underch.S("Gabbro Cobble Stair"),
			slab = underch.S("Gabbro Cobble Slab"),
			inner = underch.S("Inner Gabbro Cobble Stair"),
			outer = underch.S("Outer Gabbro Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Gabbro Bricks Stair"),
			slab = underch.S("Gabbro Bricks Slab"),
			inner = underch.S("Inner Gabbro Bricks Stair"),
			outer = underch.S("Outer Gabbro Bricks Stair"),
		},
		block = {
			stair = underch.S("Gabbro Block Stair"),
			slab = underch.S("Gabbro Block Slab"),
			inner = underch.S("Inner Gabbro Block Stair"),
			outer = underch.S("Outer Gabbro Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S("Mossy Gabbro Cobble Stair"),
			slab = underch.S("Mossy Gabbro Cobble Slab"),
			inner = underch.S("Inner Mossy Gabbro Cobble Stair"),
			outer = underch.S("Outer Mossy Gabbro Cobble Stair"),
		},
	},
})

underch.stone.register_stone("gneiss", "Mossy", {
	base = underch.S("Gneiss"),
	cobble = underch.S("Gneiss Cobble"),
	bricks = underch.S("Gneiss Brick"),
	block = underch.S("Gneiss Block"),
	coal = underch.S("Gneiss Coal Ore"),
	iron = underch.S("Gneiss Iron Ore"),
	copper = underch.S("Gneiss Copper Ore"),
	tin = underch.S("Gneiss Tin Ore"),
	mese = underch.S("Gneiss Mese Ore"),
	gold = underch.S("Gneiss Gold Ore"),
	diamond = underch.S("Gneiss Diamond Ore"),
	alien_mese = underch.S("Gneiss Alien Mese Ore"),
	alien_diamond = underch.S("Gneiss Alien Diamond Ore"),
	februm = underch.S("Gneiss Febdrum Ore"),
	egerum = underch.S("Gneiss Egerum Ore"),
	mossy_cobble = underch.S("Mossy Gneiss Cobble"),
	wall_mossy_cobble = underch.S("Mossy Gneiss Cobblestone Wall"),
	wall_cobble = underch.S("Gneiss Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Gneiss Stair"),
			slab = underch.S("Gneiss Slab"),
			inner = underch.S("Inner Gneiss Stair"),
			outer = underch.S("Outer Gneiss Stair"),
		},
		cobble = {
			stair = underch.S("Gneiss Cobble Stair"),
			slab = underch.S("Gneiss Cobble Slab"),
			inner = underch.S("Inner Gneiss Cobble Stair"),
			outer = underch.S("Outer Gneiss Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Gneiss Bricks Stair"),
			slab = underch.S("Gneiss Bricks Slab"),
			inner = underch.S("Inner Gneiss Bricks Stair"),
			outer = underch.S("Outer Gneiss Bricks Stair"),
		},
		block = {
			stair = underch.S("Gneiss Block Stair"),
			slab = underch.S("Gneiss Block Slab"),
			inner = underch.S("Inner Gneiss Block Stair"),
			outer = underch.S("Outer Gneiss Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S("Mossy Gneiss Cobble Stair"),
			slab = underch.S("Mossy Gneiss Cobble Slab"),
			inner = underch.S("Inner Mossy Gneiss Cobble Stair"),
			outer = underch.S("Outer Mossy Gneiss Cobble Stair"),
		},
	},
})

underch.stone.register_stone("granite", "Mossy", {
	base = underch.S("Granite"),
	cobble = underch.S("Granite Cobble"),
	bricks = underch.S("Granite Brick"),
	block = underch.S("Granite Block"),
	coal = underch.S("Granite Coal Ore"),
	iron = underch.S("Granite Iron Ore"),
	copper = underch.S("Granite Copper Ore"),
	tin = underch.S("Granite Tin Ore"),
	mese = underch.S("Granite Mese Ore"),
	gold = underch.S("Granite Gold Ore"),
	diamond = underch.S("Granite Diamond Ore"),
	alien_mese = underch.S("Granite Alien Mese Ore"),
	alien_diamond = underch.S("Granite Alien Diamond Ore"),
	februm = underch.S("Granite Febdrum Ore"),
	egerum = underch.S("Granite Egerum Ore"),
	mossy_cobble = underch.S("Mossy Granite Cobble"),
	wall_mossy_cobble = underch.S("Mossy Granite Cobblestone Wall"),
	wall_cobble = underch.S("Granite Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Granite Stair"),
			slab = underch.S("Granite Slab"),
			inner = underch.S("Inner Granite Stair"),
			outer = underch.S("Outer Granite Stair"),
		},
		cobble = {
			stair = underch.S("Granite Cobble Stair"),
			slab = underch.S("Granite Cobble Slab"),
			inner = underch.S("Inner Granite Cobble Stair"),
			outer = underch.S("Outer Granite Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Granite Bricks Stair"),
			slab = underch.S("Granite Bricks Slab"),
			inner = underch.S("Inner Granite Bricks Stair"),
			outer = underch.S("Outer Granite Bricks Stair"),
		},
		block = {
			stair = underch.S("Granite Block Stair"),
			slab = underch.S("Granite Block Slab"),
			inner = underch.S("Inner Granite Block Stair"),
			outer = underch.S("Outer Granite Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S("Mossy Granite Cobble Stair"),
			slab = underch.S("Mossy Granite Cobble Slab"),
			inner = underch.S("Inner Mossy Granite Cobble Stair"),
			outer = underch.S("Outer Mossy Granite Cobble Stair"),
		},
	},
})

underch.stone.register_stone("green_slimestone", nil, {
	base = underch.S("Green Slimestone"),
	cobble = underch.S("Green Slimestone Cobble"),
	bricks = underch.S("Green Slimestone Brick"),
	block = underch.S("Green Slimestone Block"),
	coal = underch.S("Green Slimestone Coal Ore"),
	iron = underch.S("Green Slimestone Iron Ore"),
	copper = underch.S("Green Slimestone Copper Ore"),
	tin = underch.S("Green Slimestone Tin Ore"),
	mese = underch.S("Green Slimestone Mese Ore"),
	gold = underch.S("Green Slimestone Gold Ore"),
	diamond = underch.S("Green Slimestone Diamond Ore"),
	alien_mese = underch.S("Green Slimestone Alien Mese Ore"),
	alien_diamond = underch.S("Green Slimestone Alien Diamond Ore"),
	februm = underch.S("Green Slimestone Febdrum Ore"),
	egerum = underch.S("Green Slimestone Egerum Ore"),
	mossy_cobble = underch.S(""),
	wall_mossy_cobble = underch.S(""),
	wall_cobble = underch.S("Green Slimestone Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Green Slimestone Stair"),
			slab = underch.S("Green Slimestone Slab"),
			inner = underch.S("Inner Green Slimestone Stair"),
			outer = underch.S("Outer Green Slimestone Stair"),
		},
		cobble = {
			stair = underch.S("Green Slimestone Cobble Stair"),
			slab = underch.S("Green Slimestone Cobble Slab"),
			inner = underch.S("Inner Green Slimestone Cobble Stair"),
			outer = underch.S("Outer Green Slimestone Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Green Slimestone Bricks Stair"),
			slab = underch.S("Green Slimestone Bricks Slab"),
			inner = underch.S("Inner Green Slimestone Bricks Stair"),
			outer = underch.S("Outer Green Slimestone Bricks Stair"),
		},
		block = {
			stair = underch.S("Green Slimestone Block Stair"),
			slab = underch.S("Green Slimestone Block Slab"),
			inner = underch.S("Inner Green Slimestone Block Stair"),
			outer = underch.S("Outer Green Slimestone Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S(""),
			slab = underch.S(""),
			inner = underch.S(""),
			outer = underch.S(""),
		},
	},
})

underch.stone.register_stone("hektorite", nil, {
	base = underch.S("Hektorite"),
	cobble = underch.S("Hektorite Cobble"),
	bricks = underch.S("Hektorite Brick"),
	block = underch.S("Hektorite Block"),
	coal = underch.S("Hektorite Coal Ore"),
	iron = underch.S("Hektorite Iron Ore"),
	copper = underch.S("Hektorite Copper Ore"),
	tin = underch.S("Hektorite Tin Ore"),
	mese = underch.S("Hektorite Mese Ore"),
	gold = underch.S("Hektorite Gold Ore"),
	diamond = underch.S("Hektorite Diamond Ore"),
	alien_mese = underch.S("Hektorite Alien Mese Ore"),
	alien_diamond = underch.S("Hektorite Alien Diamond Ore"),
	februm = underch.S("Hektorite Febdrum Ore"),
	egerum = underch.S("Hektorite Egerum Ore"),
	mossy_cobble = underch.S(""),
	wall_mossy_cobble = underch.S(""),
	wall_cobble = underch.S("Hektorite Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Hektorite Stair"),
			slab = underch.S("Hektorite Slab"),
			inner = underch.S("Inner Hektorite Stair"),
			outer = underch.S("Outer Hektorite Stair"),
		},
		cobble = {
			stair = underch.S("Hektorite Cobble Stair"),
			slab = underch.S("Hektorite Cobble Slab"),
			inner = underch.S("Inner Hektorite Cobble Stair"),
			outer = underch.S("Outer Hektorite Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Hektorite Bricks Stair"),
			slab = underch.S("Hektorite Bricks Slab"),
			inner = underch.S("Inner Hektorite Bricks Stair"),
			outer = underch.S("Outer Hektorite Bricks Stair"),
		},
		block = {
			stair = underch.S("Hektorite Block Stair"),
			slab = underch.S("Hektorite Block Slab"),
			inner = underch.S("Inner Hektorite Block Stair"),
			outer = underch.S("Outer Hektorite Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S(""),
			slab = underch.S(""),
			inner = underch.S(""),
			outer = underch.S(""),
		},
	},
})

underch.stone.register_stone("limestone", "Mossy", {
	base = underch.S("Limestone"),
	cobble = underch.S("Limestone Cobble"),
	bricks = underch.S("Limestone Brick"),
	block = underch.S("Limestone Block"),
	coal = underch.S("Limestone Coal Ore"),
	iron = underch.S("Limestone Iron Ore"),
	copper = underch.S("Limestone Copper Ore"),
	tin = underch.S("Limestone Tin Ore"),
	mese = underch.S("Limestone Mese Ore"),
	gold = underch.S("Limestone Gold Ore"),
	diamond = underch.S("Limestone Diamond Ore"),
	alien_mese = underch.S("Limestone Alien Mese Ore"),
	alien_diamond = underch.S("Limestone Alien Diamond Ore"),
	februm = underch.S("Limestone Febdrum Ore"),
	egerum = underch.S("Limestone Egerum Ore"),
	mossy_cobble = underch.S("Mossy Limestone Cobble"),
	wall_mossy_cobble = underch.S("Mossy Limestone Cobblestone Wall"),
	wall_cobble = underch.S("Limestone Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Limestone Stair"),
			slab = underch.S("Limestone Slab"),
			inner = underch.S("Inner Limestone Stair"),
			outer = underch.S("Outer Limestone Stair"),
		},
		cobble = {
			stair = underch.S("Limestone Cobble Stair"),
			slab = underch.S("Limestone Cobble Slab"),
			inner = underch.S("Inner Limestone Cobble Stair"),
			outer = underch.S("Outer Limestone Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Limestone Bricks Stair"),
			slab = underch.S("Limestone Bricks Slab"),
			inner = underch.S("Inner Limestone Bricks Stair"),
			outer = underch.S("Outer Limestone Bricks Stair"),
		},
		block = {
			stair = underch.S("Limestone Block Stair"),
			slab = underch.S("Limestone Block Slab"),
			inner = underch.S("Inner Limestone Block Stair"),
			outer = underch.S("Outer Limestone Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S("Mossy Limestone Cobble Stair"),
			slab = underch.S("Mossy Limestone Cobble Slab"),
			inner = underch.S("Inner Mossy Limestone Cobble Stair"),
			outer = underch.S("Outer Mossy Limestone Cobble Stair"),
		},
	},
})

underch.stone.register_stone("marble", "Mossy", {
	base = underch.S("Marble"),
	cobble = underch.S("Marble Cobble"),
	bricks = underch.S("Marble Brick"),
	block = underch.S("Marble Block"),
	coal = underch.S("Marble Coal Ore"),
	iron = underch.S("Marble Iron Ore"),
	copper = underch.S("Marble Copper Ore"),
	tin = underch.S("Marble Tin Ore"),
	mese = underch.S("Marble Mese Ore"),
	gold = underch.S("Marble Gold Ore"),
	diamond = underch.S("Marble Diamond Ore"),
	alien_mese = underch.S("Marble Alien Mese Ore"),
	alien_diamond = underch.S("Marble Alien Diamond Ore"),
	februm = underch.S("Marble Febdrum Ore"),
	egerum = underch.S("Marble Egerum Ore"),
	mossy_cobble = underch.S("Mossy Marble Cobble"),
	wall_mossy_cobble = underch.S("Mossy Marble Cobblestone Wall"),
	wall_cobble = underch.S("Marble Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Marble Stair"),
			slab = underch.S("Marble Slab"),
			inner = underch.S("Inner Marble Stair"),
			outer = underch.S("Outer Marble Stair"),
		},
		cobble = {
			stair = underch.S("Marble Cobble Stair"),
			slab = underch.S("Marble Cobble Slab"),
			inner = underch.S("Inner Marble Cobble Stair"),
			outer = underch.S("Outer Marble Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Marble Bricks Stair"),
			slab = underch.S("Marble Bricks Slab"),
			inner = underch.S("Inner Marble Bricks Stair"),
			outer = underch.S("Outer Marble Bricks Stair"),
		},
		block = {
			stair = underch.S("Marble Block Stair"),
			slab = underch.S("Marble Block Slab"),
			inner = underch.S("Inner Marble Block Stair"),
			outer = underch.S("Outer Marble Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S("Mossy Marble Cobble Stair"),
			slab = underch.S("Mossy Marble Cobble Slab"),
			inner = underch.S("Inner Mossy Marble Cobble Stair"),
			outer = underch.S("Outer Mossy Marble Cobble Stair"),
		},
	},
})

underch.stone.register_stone("omphyrite", nil, {
	base = underch.S("Omphyrite"),
	cobble = underch.S("Omphyrite Cobble"),
	bricks = underch.S("Omphyrite Brick"),
	block = underch.S("Omphyrite Block"),
	coal = underch.S("Omphyrite Coal Ore"),
	iron = underch.S("Omphyrite Iron Ore"),
	copper = underch.S("Omphyrite Copper Ore"),
	tin = underch.S("Omphyrite Tin Ore"),
	mese = underch.S("Omphyrite Mese Ore"),
	gold = underch.S("Omphyrite Gold Ore"),
	diamond = underch.S("Omphyrite Diamond Ore"),
	alien_mese = underch.S("Omphyrite Alien Mese Ore"),
	alien_diamond = underch.S("Omphyrite Alien Diamond Ore"),
	februm = underch.S("Omphyrite Febdrum Ore"),
	egerum = underch.S("Omphyrite Egerum Ore"),
	mossy_cobble = underch.S(""),
	wall_mossy_cobble = underch.S(""),
	wall_cobble = underch.S("Omphyrite Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Omphyrite Stair"),
			slab = underch.S("Omphyrite Slab"),
			inner = underch.S("Inner Omphyrite Stair"),
			outer = underch.S("Outer Omphyrite Stair"),
		},
		cobble = {
			stair = underch.S("Omphyrite Cobble Stair"),
			slab = underch.S("Omphyrite Cobble Slab"),
			inner = underch.S("Inner Omphyrite Cobble Stair"),
			outer = underch.S("Outer Omphyrite Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Omphyrite Bricks Stair"),
			slab = underch.S("Omphyrite Bricks Slab"),
			inner = underch.S("Inner Omphyrite Bricks Stair"),
			outer = underch.S("Outer Omphyrite Bricks Stair"),
		},
		block = {
			stair = underch.S("Omphyrite Block Stair"),
			slab = underch.S("Omphyrite Block Slab"),
			inner = underch.S("Inner Omphyrite Block Stair"),
			outer = underch.S("Outer Omphyrite Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S(""),
			slab = underch.S(""),
			inner = underch.S(""),
			outer = underch.S(""),
		},
	},
})

underch.stone.register_stone("pegmatite", "Mossy", {
	base = underch.S("Pegmatite"),
	cobble = underch.S("Pegmatite Cobble"),
	bricks = underch.S("Pegmatite Brick"),
	block = underch.S("Pegmatite Block"),
	coal = underch.S("Pegmatite Coal Ore"),
	iron = underch.S("Pegmatite Iron Ore"),
	copper = underch.S("Pegmatite Copper Ore"),
	tin = underch.S("Pegmatite Tin Ore"),
	mese = underch.S("Pegmatite Mese Ore"),
	gold = underch.S("Pegmatite Gold Ore"),
	diamond = underch.S("Pegmatite Diamond Ore"),
	alien_mese = underch.S("Pegmatite Alien Mese Ore"),
	alien_diamond = underch.S("Pegmatite Alien Diamond Ore"),
	februm = underch.S("Pegmatite Febdrum Ore"),
	egerum = underch.S("Pegmatite Egerum Ore"),
	mossy_cobble = underch.S("Mossy Pegmatite Cobble"),
	wall_mossy_cobble = underch.S("Mossy Pegmatite Cobblestone Wall"),
	wall_cobble = underch.S("Pegmatite Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Pegmatite Stair"),
			slab = underch.S("Pegmatite Slab"),
			inner = underch.S("Inner Pegmatite Stair"),
			outer = underch.S("Outer Pegmatite Stair"),
		},
		cobble = {
			stair = underch.S("Pegmatite Cobble Stair"),
			slab = underch.S("Pegmatite Cobble Slab"),
			inner = underch.S("Inner Pegmatite Cobble Stair"),
			outer = underch.S("Outer Pegmatite Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Pegmatite Bricks Stair"),
			slab = underch.S("Pegmatite Bricks Slab"),
			inner = underch.S("Inner Pegmatite Bricks Stair"),
			outer = underch.S("Outer Pegmatite Bricks Stair"),
		},
		block = {
			stair = underch.S("Pegmatite Block Stair"),
			slab = underch.S("Pegmatite Block Slab"),
			inner = underch.S("Inner Pegmatite Block Stair"),
			outer = underch.S("Outer Pegmatite Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S("Mossy Pegmatite Cobble Stair"),
			slab = underch.S("Mossy Pegmatite Cobble Slab"),
			inner = underch.S("Inner Mossy Pegmatite Cobble Stair"),
			outer = underch.S("Outer Mossy Pegmatite Cobble Stair"),
		},
	},
})

underch.stone.register_stone("peridotite", "Mossy", {
	base = underch.S("Peridotite"),
	cobble = underch.S("Peridotite Cobble"),
	bricks = underch.S("Peridotite Brick"),
	block = underch.S("Peridotite Block"),
	coal = underch.S("Peridotite Coal Ore"),
	iron = underch.S("Peridotite Iron Ore"),
	copper = underch.S("Peridotite Copper Ore"),
	tin = underch.S("Peridotite Tin Ore"),
	mese = underch.S("Peridotite Mese Ore"),
	gold = underch.S("Peridotite Gold Ore"),
	diamond = underch.S("Peridotite Diamond Ore"),
	alien_mese = underch.S("Peridotite Alien Mese Ore"),
	alien_diamond = underch.S("Peridotite Alien Diamond Ore"),
	februm = underch.S("Peridotite Febdrum Ore"),
	egerum = underch.S("Peridotite Egerum Ore"),
	mossy_cobble = underch.S("Mossy Peridotite Cobble"),
	wall_mossy_cobble = underch.S("Mossy Peridotite Cobblestone Wall"),
	wall_cobble = underch.S("Peridotite Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Peridotite Stair"),
			slab = underch.S("Peridotite Slab"),
			inner = underch.S("Inner Peridotite Stair"),
			outer = underch.S("Outer Peridotite Stair"),
		},
		cobble = {
			stair = underch.S("Peridotite Cobble Stair"),
			slab = underch.S("Peridotite Cobble Slab"),
			inner = underch.S("Inner Peridotite Cobble Stair"),
			outer = underch.S("Outer Peridotite Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Peridotite Bricks Stair"),
			slab = underch.S("Peridotite Bricks Slab"),
			inner = underch.S("Inner Peridotite Bricks Stair"),
			outer = underch.S("Outer Peridotite Bricks Stair"),
		},
		block = {
			stair = underch.S("Peridotite Block Stair"),
			slab = underch.S("Peridotite Block Slab"),
			inner = underch.S("Inner Peridotite Block Stair"),
			outer = underch.S("Outer Peridotite Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S("Mossy Peridotite Cobble Stair"),
			slab = underch.S("Mossy Peridotite Cobble Slab"),
			inner = underch.S("Inner Mossy Peridotite Cobble Stair"),
			outer = underch.S("Outer Mossy Peridotite Cobble Stair"),
		},
	},
})

underch.stone.register_stone("phonolite", "Mossy", {
	base = underch.S("Phonolite"),
	cobble = underch.S("Phonolite Cobble"),
	bricks = underch.S("Phonolite Brick"),
	block = underch.S("Phonolite Block"),
	coal = underch.S("Phonolite Coal Ore"),
	iron = underch.S("Phonolite Iron Ore"),
	copper = underch.S("Phonolite Copper Ore"),
	tin = underch.S("Phonolite Tin Ore"),
	mese = underch.S("Phonolite Mese Ore"),
	gold = underch.S("Phonolite Gold Ore"),
	diamond = underch.S("Phonolite Diamond Ore"),
	alien_mese = underch.S("Phonolite Alien Mese Ore"),
	alien_diamond = underch.S("Phonolite Alien Diamond Ore"),
	februm = underch.S("Phonolite Febdrum Ore"),
	egerum = underch.S("Phonolite Egerum Ore"),
	mossy_cobble = underch.S("Mossy Phonolite Cobble"),
	wall_mossy_cobble = underch.S("Mossy Phonolite Cobblestone Wall"),
	wall_cobble = underch.S("Phonolite Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Phonolite Stair"),
			slab = underch.S("Phonolite Slab"),
			inner = underch.S("Inner Phonolite Stair"),
			outer = underch.S("Outer Phonolite Stair"),
		},
		cobble = {
			stair = underch.S("Phonolite Cobble Stair"),
			slab = underch.S("Phonolite Cobble Slab"),
			inner = underch.S("Inner Phonolite Cobble Stair"),
			outer = underch.S("Outer Phonolite Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Phonolite Bricks Stair"),
			slab = underch.S("Phonolite Bricks Slab"),
			inner = underch.S("Inner Phonolite Bricks Stair"),
			outer = underch.S("Outer Phonolite Bricks Stair"),
		},
		block = {
			stair = underch.S("Phonolite Block Stair"),
			slab = underch.S("Phonolite Block Slab"),
			inner = underch.S("Inner Phonolite Block Stair"),
			outer = underch.S("Outer Phonolite Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S("Mossy Phonolite Cobble Stair"),
			slab = underch.S("Mossy Phonolite Cobble Slab"),
			inner = underch.S("Inner Mossy Phonolite Cobble Stair"),
			outer = underch.S("Outer Mossy Phonolite Cobble Stair"),
		},
	},
})

underch.stone.register_stone("phylite", "Mossy", {
	base = underch.S("Phylite"),
	cobble = underch.S("Phylite Cobble"),
	bricks = underch.S("Phylite Brick"),
	block = underch.S("Phylite Block"),
	coal = underch.S("Phylite Coal Ore"),
	iron = underch.S("Phylite Iron Ore"),
	copper = underch.S("Phylite Copper Ore"),
	tin = underch.S("Phylite Tin Ore"),
	mese = underch.S("Phylite Mese Ore"),
	gold = underch.S("Phylite Gold Ore"),
	diamond = underch.S("Phylite Diamond Ore"),
	alien_mese = underch.S("Phylite Alien Mese Ore"),
	alien_diamond = underch.S("Phylite Alien Diamond Ore"),
	februm = underch.S("Phylite Febdrum Ore"),
	egerum = underch.S("Phylite Egerum Ore"),
	mossy_cobble = underch.S("Mossy Phylite Cobble"),
	wall_mossy_cobble = underch.S("Mossy Phylite Cobblestone Wall"),
	wall_cobble = underch.S("Phylite Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Phylite Stair"),
			slab = underch.S("Phylite Slab"),
			inner = underch.S("Inner Phylite Stair"),
			outer = underch.S("Outer Phylite Stair"),
		},
		cobble = {
			stair = underch.S("Phylite Cobble Stair"),
			slab = underch.S("Phylite Cobble Slab"),
			inner = underch.S("Inner Phylite Cobble Stair"),
			outer = underch.S("Outer Phylite Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Phylite Bricks Stair"),
			slab = underch.S("Phylite Bricks Slab"),
			inner = underch.S("Inner Phylite Bricks Stair"),
			outer = underch.S("Outer Phylite Bricks Stair"),
		},
		block = {
			stair = underch.S("Phylite Block Stair"),
			slab = underch.S("Phylite Block Slab"),
			inner = underch.S("Inner Phylite Block Stair"),
			outer = underch.S("Outer Phylite Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S("Mossy Phylite Cobble Stair"),
			slab = underch.S("Mossy Phylite Cobble Slab"),
			inner = underch.S("Inner Mossy Phylite Cobble Stair"),
			outer = underch.S("Outer Mossy Phylite Cobble Stair"),
		},
	},
})

underch.stone.register_stone("purple_slimestone", nil, {
	base = underch.S("Purple Slimestone"),
	cobble = underch.S("Purple Slimestone Cobble"),
	bricks = underch.S("Purple Slimestone Brick"),
	block = underch.S("Purple Slimestone Block"),
	coal = underch.S("Purple Slimestone Coal Ore"),
	iron = underch.S("Purple Slimestone Iron Ore"),
	copper = underch.S("Purple Slimestone Copper Ore"),
	tin = underch.S("Purple Slimestone Tin Ore"),
	mese = underch.S("Purple Slimestone Mese Ore"),
	gold = underch.S("Purple Slimestone Gold Ore"),
	diamond = underch.S("Purple Slimestone Diamond Ore"),
	alien_mese = underch.S("Purple Slimestone Alien Mese Ore"),
	alien_diamond = underch.S("Purple Slimestone Alien Diamond Ore"),
	februm = underch.S("Purple Slimestone Febdrum Ore"),
	egerum = underch.S("Purple Slimestone Egerum Ore"),
	mossy_cobble = underch.S(""),
	wall_mossy_cobble = underch.S(""),
	wall_cobble = underch.S("Purple Slimestone Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Purple Slimestone Stair"),
			slab = underch.S("Purple Slimestone Slab"),
			inner = underch.S("Inner Purple Slimestone Stair"),
			outer = underch.S("Outer Purple Slimestone Stair"),
		},
		cobble = {
			stair = underch.S("Purple Slimestone Cobble Stair"),
			slab = underch.S("Purple Slimestone Cobble Slab"),
			inner = underch.S("Inner Purple Slimestone Cobble Stair"),
			outer = underch.S("Outer Purple Slimestone Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Purple Slimestone Bricks Stair"),
			slab = underch.S("Purple Slimestone Bricks Slab"),
			inner = underch.S("Inner Purple Slimestone Bricks Stair"),
			outer = underch.S("Outer Purple Slimestone Bricks Stair"),
		},
		block = {
			stair = underch.S("Purple Slimestone Block Stair"),
			slab = underch.S("Purple Slimestone Block Slab"),
			inner = underch.S("Inner Purple Slimestone Block Stair"),
			outer = underch.S("Outer Purple Slimestone Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S(""),
			slab = underch.S(""),
			inner = underch.S(""),
			outer = underch.S(""),
		},
	},
})

underch.stone.register_stone("quartzite", "Mossy", {
	base = underch.S("Quartzite"),
	cobble = underch.S("Quartzite Cobble"),
	bricks = underch.S("Quartzite Brick"),
	block = underch.S("Quartzite Block"),
	coal = underch.S("Quartzite Coal Ore"),
	iron = underch.S("Quartzite Iron Ore"),
	copper = underch.S("Quartzite Copper Ore"),
	tin = underch.S("Quartzite Tin Ore"),
	mese = underch.S("Quartzite Mese Ore"),
	gold = underch.S("Quartzite Gold Ore"),
	diamond = underch.S("Quartzite Diamond Ore"),
	alien_mese = underch.S("Quartzite Alien Mese Ore"),
	alien_diamond = underch.S("Quartzite Alien Diamond Ore"),
	februm = underch.S("Quartzite Febdrum Ore"),
	egerum = underch.S("Quartzite Egerum Ore"),
	mossy_cobble = underch.S("Mossy Quartzite Cobble"),
	wall_mossy_cobble = underch.S("Mossy Quartzite Cobblestone Wall"),
	wall_cobble = underch.S("Quartzite Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Quartzite Stair"),
			slab = underch.S("Quartzite Slab"),
			inner = underch.S("Inner Quartzite Stair"),
			outer = underch.S("Outer Quartzite Stair"),
		},
		cobble = {
			stair = underch.S("Quartzite Cobble Stair"),
			slab = underch.S("Quartzite Cobble Slab"),
			inner = underch.S("Inner Quartzite Cobble Stair"),
			outer = underch.S("Outer Quartzite Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Quartzite Bricks Stair"),
			slab = underch.S("Quartzite Bricks Slab"),
			inner = underch.S("Inner Quartzite Bricks Stair"),
			outer = underch.S("Outer Quartzite Bricks Stair"),
		},
		block = {
			stair = underch.S("Quartzite Block Stair"),
			slab = underch.S("Quartzite Block Slab"),
			inner = underch.S("Inner Quartzite Block Stair"),
			outer = underch.S("Outer Quartzite Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S("Mossy Quartzite Cobble Stair"),
			slab = underch.S("Mossy Quartzite Cobble Slab"),
			inner = underch.S("Inner Mossy Quartzite Cobble Stair"),
			outer = underch.S("Outer Mossy Quartzite Cobble Stair"),
		},
	},
})

underch.stone.register_stone("red_slimestone", nil, {
	base = underch.S("Red Slimestone"),
	cobble = underch.S("Red Slimestone Cobble"),
	bricks = underch.S("Red Slimestone Brick"),
	block = underch.S("Red Slimestone Block"),
	coal = underch.S("Red Slimestone Coal Ore"),
	iron = underch.S("Red Slimestone Iron Ore"),
	copper = underch.S("Red Slimestone Copper Ore"),
	tin = underch.S("Red Slimestone Tin Ore"),
	mese = underch.S("Red Slimestone Mese Ore"),
	gold = underch.S("Red Slimestone Gold Ore"),
	diamond = underch.S("Red Slimestone Diamond Ore"),
	alien_mese = underch.S("Red Slimestone Alien Mese Ore"),
	alien_diamond = underch.S("Red Slimestone Alien Diamond Ore"),
	februm = underch.S("Red Slimestone Febdrum Ore"),
	egerum = underch.S("Red Slimestone Egerum Ore"),
	mossy_cobble = underch.S(""),
	wall_mossy_cobble = underch.S(""),
	wall_cobble = underch.S("Red Slimestone Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Red Slimestone Stair"),
			slab = underch.S("Red Slimestone Slab"),
			inner = underch.S("Inner Red Slimestone Stair"),
			outer = underch.S("Outer Red Slimestone Stair"),
		},
		cobble = {
			stair = underch.S("Red Slimestone Cobble Stair"),
			slab = underch.S("Red Slimestone Cobble Slab"),
			inner = underch.S("Inner Red Slimestone Cobble Stair"),
			outer = underch.S("Outer Red Slimestone Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Red Slimestone Bricks Stair"),
			slab = underch.S("Red Slimestone Bricks Slab"),
			inner = underch.S("Inner Red Slimestone Bricks Stair"),
			outer = underch.S("Outer Red Slimestone Bricks Stair"),
		},
		block = {
			stair = underch.S("Red Slimestone Block Stair"),
			slab = underch.S("Red Slimestone Block Slab"),
			inner = underch.S("Inner Red Slimestone Block Stair"),
			outer = underch.S("Outer Red Slimestone Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S(""),
			slab = underch.S(""),
			inner = underch.S(""),
			outer = underch.S(""),
		},
	},
})

underch.stone.register_stone("schist", "Mossy", {
	base = underch.S("Schist"),
	cobble = underch.S("Schist Cobble"),
	bricks = underch.S("Schist Brick"),
	block = underch.S("Schist Block"),
	coal = underch.S("Schist Coal Ore"),
	iron = underch.S("Schist Iron Ore"),
	copper = underch.S("Schist Copper Ore"),
	tin = underch.S("Schist Tin Ore"),
	mese = underch.S("Schist Mese Ore"),
	gold = underch.S("Schist Gold Ore"),
	diamond = underch.S("Schist Diamond Ore"),
	alien_mese = underch.S("Schist Alien Mese Ore"),
	alien_diamond = underch.S("Schist Alien Diamond Ore"),
	februm = underch.S("Schist Febdrum Ore"),
	egerum = underch.S("Schist Egerum Ore"),
	mossy_cobble = underch.S("Mossy Schist Cobble"),
	wall_mossy_cobble = underch.S("Mossy Schist Cobblestone Wall"),
	wall_cobble = underch.S("Schist Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Schist Stair"),
			slab = underch.S("Schist Slab"),
			inner = underch.S("Inner Schist Stair"),
			outer = underch.S("Outer Schist Stair"),
		},
		cobble = {
			stair = underch.S("Schist Cobble Stair"),
			slab = underch.S("Schist Cobble Slab"),
			inner = underch.S("Inner Schist Cobble Stair"),
			outer = underch.S("Outer Schist Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Schist Bricks Stair"),
			slab = underch.S("Schist Bricks Slab"),
			inner = underch.S("Inner Schist Bricks Stair"),
			outer = underch.S("Outer Schist Bricks Stair"),
		},
		block = {
			stair = underch.S("Schist Block Stair"),
			slab = underch.S("Schist Block Slab"),
			inner = underch.S("Inner Schist Block Stair"),
			outer = underch.S("Outer Schist Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S("Mossy Schist Cobble Stair"),
			slab = underch.S("Mossy Schist Cobble Slab"),
			inner = underch.S("Inner Mossy Schist Cobble Stair"),
			outer = underch.S("Outer Mossy Schist Cobble Stair"),
		},
	},
})

underch.stone.register_stone("sichamine", "Weedy", {
	base = underch.S("Sichamine"),
	cobble = underch.S("Sichamine Cobble"),
	bricks = underch.S("Sichamine Brick"),
	block = underch.S("Sichamine Block"),
	coal = underch.S("Sichamine Coal Ore"),
	iron = underch.S("Sichamine Iron Ore"),
	copper = underch.S("Sichamine Copper Ore"),
	tin = underch.S("Sichamine Tin Ore"),
	mese = underch.S("Sichamine Mese Ore"),
	gold = underch.S("Sichamine Gold Ore"),
	diamond = underch.S("Sichamine Diamond Ore"),
	alien_mese = underch.S("Sichamine Alien Mese Ore"),
	alien_diamond = underch.S("Sichamine Alien Diamond Ore"),
	februm = underch.S("Sichamine Febdrum Ore"),
	egerum = underch.S("Sichamine Egerum Ore"),
	mossy_cobble = underch.S("Weedy Sichamine Cobble"),
	wall_mossy_cobble = underch.S("Weedy Sichamine Cobblestone Wall"),
	wall_cobble = underch.S("Sichamine Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Sichamine Stair"),
			slab = underch.S("Sichamine Slab"),
			inner = underch.S("Inner Sichamine Stair"),
			outer = underch.S("Outer Sichamine Stair"),
		},
		cobble = {
			stair = underch.S("Sichamine Cobble Stair"),
			slab = underch.S("Sichamine Cobble Slab"),
			inner = underch.S("Inner Sichamine Cobble Stair"),
			outer = underch.S("Outer Sichamine Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Sichamine Bricks Stair"),
			slab = underch.S("Sichamine Bricks Slab"),
			inner = underch.S("Inner Sichamine Bricks Stair"),
			outer = underch.S("Outer Sichamine Bricks Stair"),
		},
		block = {
			stair = underch.S("Sichamine Block Stair"),
			slab = underch.S("Sichamine Block Slab"),
			inner = underch.S("Inner Sichamine Block Stair"),
			outer = underch.S("Outer Sichamine Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S("Weedy Sichamine Cobble Stair"),
			slab = underch.S("Weedy Sichamine Cobble Slab"),
			inner = underch.S("Inner Weedy Sichamine Cobble Stair"),
			outer = underch.S("Outer Weedy Sichamine Cobble Stair"),
		},
	},
})

underch.stone.register_stone("slate", "Mossy", {
	base = underch.S("Slate"),
	cobble = underch.S("Slate Cobble"),
	bricks = underch.S("Slate Brick"),
	block = underch.S("Slate Block"),
	coal = underch.S("Slate Coal Ore"),
	iron = underch.S("Slate Iron Ore"),
	copper = underch.S("Slate Copper Ore"),
	tin = underch.S("Slate Tin Ore"),
	mese = underch.S("Slate Mese Ore"),
	gold = underch.S("Slate Gold Ore"),
	diamond = underch.S("Slate Diamond Ore"),
	alien_mese = underch.S("Slate Alien Mese Ore"),
	alien_diamond = underch.S("Slate Alien Diamond Ore"),
	februm = underch.S("Slate Febdrum Ore"),
	egerum = underch.S("Slate Egerum Ore"),
	mossy_cobble = underch.S("Mossy Slate Cobble"),
	wall_mossy_cobble = underch.S("Mossy Slate Cobblestone Wall"),
	wall_cobble = underch.S("Slate Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Slate Stair"),
			slab = underch.S("Slate Slab"),
			inner = underch.S("Inner Slate Stair"),
			outer = underch.S("Outer Slate Stair"),
		},
		cobble = {
			stair = underch.S("Slate Cobble Stair"),
			slab = underch.S("Slate Cobble Slab"),
			inner = underch.S("Inner Slate Cobble Stair"),
			outer = underch.S("Outer Slate Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Slate Bricks Stair"),
			slab = underch.S("Slate Bricks Slab"),
			inner = underch.S("Inner Slate Bricks Stair"),
			outer = underch.S("Outer Slate Bricks Stair"),
		},
		block = {
			stair = underch.S("Slate Block Stair"),
			slab = underch.S("Slate Block Slab"),
			inner = underch.S("Inner Slate Block Stair"),
			outer = underch.S("Outer Slate Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S("Mossy Slate Cobble Stair"),
			slab = underch.S("Mossy Slate Cobble Slab"),
			inner = underch.S("Inner Mossy Slate Cobble Stair"),
			outer = underch.S("Outer Mossy Slate Cobble Stair"),
		},
	},
})

underch.stone.register_stone("vindesite", "Mossy", {
	base = underch.S("Vindesite"),
	cobble = underch.S("Vindesite Cobble"),
	bricks = underch.S("Vindesite Brick"),
	block = underch.S("Vindesite Block"),
	coal = underch.S("Vindesite Coal Ore"),
	iron = underch.S("Vindesite Iron Ore"),
	copper = underch.S("Vindesite Copper Ore"),
	tin = underch.S("Vindesite Tin Ore"),
	mese = underch.S("Vindesite Mese Ore"),
	gold = underch.S("Vindesite Gold Ore"),
	diamond = underch.S("Vindesite Diamond Ore"),
	alien_mese = underch.S("Vindesite Alien Mese Ore"),
	alien_diamond = underch.S("Vindesite Alien Diamond Ore"),
	februm = underch.S("Vindesite Febdrum Ore"),
	egerum = underch.S("Vindesite Egerum Ore"),
	mossy_cobble = underch.S("Mossy Vindesite Cobble"),
	wall_mossy_cobble = underch.S("Mossy Vindesite Cobblestone Wall"),
	wall_cobble = underch.S("Vindesite Cobblestone Wall"),
	stair = {
		base = {
			stair = underch.S("Vindesite Stair"),
			slab = underch.S("Vindesite Slab"),
			inner = underch.S("Inner Vindesite Stair"),
			outer = underch.S("Outer Vindesite Stair"),
		},
		cobble = {
			stair = underch.S("Vindesite Cobble Stair"),
			slab = underch.S("Vindesite Cobble Slab"),
			inner = underch.S("Inner Vindesite Cobble Stair"),
			outer = underch.S("Outer Vindesite Cobble Stair"),
		},
		bricks = {
			stair = underch.S("Vindesite Bricks Stair"),
			slab = underch.S("Vindesite Bricks Slab"),
			inner = underch.S("Inner Vindesite Bricks Stair"),
			outer = underch.S("Outer Vindesite Bricks Stair"),
		},
		block = {
			stair = underch.S("Vindesite Block Stair"),
			slab = underch.S("Vindesite Block Slab"),
			inner = underch.S("Inner Vindesite Block Stair"),
			outer = underch.S("Outer Vindesite Block Stair"),
		},
		mossy_cobble = {
			stair = underch.S("Mossy Vindesite Cobble Stair"),
			slab = underch.S("Mossy Vindesite Cobble Slab"),
			inner = underch.S("Inner Mossy Vindesite Cobble Stair"),
			outer = underch.S("Outer Mossy Vindesite Cobble Stair"),
		},
	},
})
