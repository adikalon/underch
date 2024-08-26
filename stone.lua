underch.stone = {}
underch.stone.defs = {}

function underch.stone.register_stone(name, id, mossy)
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
		description = name,
		tiles = {"underch_" .. id .. ".png"},
		groups = {cracky = 3, stone = 1, smoothstone = 1, jit_shadow = 1},
		after_dig_node = underch.jit.dig_shadow,
		drop = cobble,
		legacy_mineral = true,
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(cobble, {
		description = name .. " Cobble",
		tiles = {"underch_" .. id .. "_cobble.png"},
		is_ground_content = false,
		groups = {cracky = 3, stone = 2, cobble = 1, jit_shadow = 1},
		after_dig_node = underch.jit.dig_shadow,
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(brick, {
		description = name .. " Bricks",
		paramtype2 = "facedir",
		place_param2 = 0,
		tiles = {"underch_" .. id .. "_brick.png"},
		is_ground_content = false,
		groups = {cracky = 2, stone = 1, stonebrick = 1},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(block, {
		description = name .. " Block",
		tiles = {"underch_" .. id .."_block.png"},
		is_ground_content = false,
		groups = {cracky = 2, stone = 1, stoneblock = 1},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(with_coal, {
		description = name .. " Coal Ore",
		tiles = {"underch_" .. id .. ".png^default_mineral_coal.png"},
		groups = {cracky = 3},
		drop = "default:coal_lump",
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(with_iron, {
		description = name .. " Iron Ore",
		tiles = {"underch_" .. id .. ".png^default_mineral_iron.png"},
		groups = {cracky = 2},
		drop = "default:iron_lump",
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(with_copper, {
		description = name .. " Copper Ore",
		tiles = {"underch_" .. id .. ".png^default_mineral_copper.png"},
		groups = {cracky = 2},
		drop = "default:copper_lump",
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(with_tin, {
		description = name .. " Tin Ore",
		tiles = {"underch_" .. id .. ".png^default_mineral_tin.png"},
		groups = {cracky = 2},
		drop = "default:tin_lump",
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(with_mese, {
		description = name .. " Mese Ore",
		tiles = {"underch_" .. id .. ".png^default_mineral_mese.png"},
		groups = {cracky = 1},
		drop = "default:mese_crystal",
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(with_gold, {
		description = name .. " Gold Ore",
		tiles = {"underch_" .. id .. ".png^default_mineral_gold.png"},
		groups = {cracky = 2},
		drop = "default:gold_lump",
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(with_diamond, {
		description = name .. " Diamond Ore",
		tiles = {"underch_" .. id .. ".png^default_mineral_diamond.png"},
		groups = {cracky = 1},
		drop = "default:diamond",
		sounds = default.node_sound_stone_defaults(),
	})

	if underch.have_alien_material then
		minetest.register_node(alien_mese_ore, {
			description = name .. " Alien Mese Ore",
			tiles = {"underch_" .. id .. ".png^alien_mese_ore.png"},
			groups = {cracky = 1},
			is_ground_content = true,
			legacy_mineral = true,
			drop = "alien_material:alien_mese",
			sounds = default.node_sound_stone_defaults(),
		})

		minetest.register_node(alien_diamond_ore, {
			description = name .. " Alien Diamond Ore",
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
			description = name .. " Februm Ore",
			tiles = {"underch_" .. id .. ".png^magic_materials_mineral_februm.png"},
			groups = {cracky = 1},
			drop = "magic_materials:februm_crystal",
			sounds = default.node_sound_stone_defaults(),
		})

		minetest.register_node(with_egerum, {
			description = name .. " Egerum Ore",
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
		name,
		default.node_sound_stone_defaults())

	underch.functions.register_stairs(
		id .. "_cobble",
		{cracky = 3, cobblestairs = 1},
		{"underch_" .. id .. "_cobble.png"},
		name .. " Cobble",
		default.node_sound_stone_defaults())

	underch.functions.register_stairs(
		id .. "_brick",
		{cracky = 3},
		{"underch_" .. id .. "_brick.png"},
		name .. " Bricks",
		default.node_sound_stone_defaults())

	underch.functions.register_stairs(
		id .. "_block",
		{cracky = 3},
		{"underch_" .. id .. "_block.png"},
		name .. " Block",
		default.node_sound_stone_defaults())

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
			description = mossy .. " " .. name .. " Cobble",
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
			mossy .. " " .. name .. " Cobble",
			default.node_sound_stone_defaults())

		if walls ~= nil then
			walls.register(mossy_cobble .. "_wall", mossy .. " " .. name .. " Cobblestone Wall",
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
		walls.register(cobble .. "_wall", name .. " Cobblestone Wall", {"underch_" .. id .. "_cobble.png"},
			cobble, default.node_sound_stone_defaults())
	end

	if underch.have_advtrains then
		advtrains.register_platform("underch", base)
		advtrains.register_platform("underch", block)
		advtrains.register_platform("underch", brick)
	end
end

underch.stone.register_stone("Afualite", "afualite", nil)
underch.stone.register_stone("Amphibolite", "amphibolite", "Mossy")
underch.stone.register_stone("Andesite", "andesite", "Mossy")
underch.stone.register_stone("Aplite", "aplite", "Mossy")
underch.stone.register_stone("Basalt", "basalt", "Mossy")
underch.stone.register_stone("Dark Vindesite", "dark_vindesite", "Mossy")
underch.stone.register_stone("Diorite", "diorite", "Mossy")
underch.stone.register_stone("Dolomite", "dolomite", "Mossy")
underch.stone.register_stone("Emutite", "emutite", nil)
underch.stone.register_stone("Gabbro", "gabbro", "Mossy")
underch.stone.register_stone("Gneiss", "gneiss", "Mossy")
underch.stone.register_stone("Granite", "granite", "Mossy")
underch.stone.register_stone("Green Slimestone", "green_slimestone", nil)
underch.stone.register_stone("Hektorite", "hektorite", nil)
underch.stone.register_stone("Limestone", "limestone", "Mossy")
underch.stone.register_stone("Marble", "marble", "Mossy")
underch.stone.register_stone("Omphyrite", "omphyrite", nil)
underch.stone.register_stone("Pegmatite", "pegmatite", "Mossy")
underch.stone.register_stone("Peridotite", "peridotite", "Mossy")
underch.stone.register_stone("Phonolite", "phonolite", "Mossy")
underch.stone.register_stone("Phylite", "phylite", "Mossy")
underch.stone.register_stone("Purple Slimestone", "purple_slimestone", nil)
underch.stone.register_stone("Quartzite", "quartzite", "Mossy")
underch.stone.register_stone("Red Slimestone", "red_slimestone", nil)
underch.stone.register_stone("Schist", "schist", "Mossy")
underch.stone.register_stone("Sichamine", "sichamine", "Weedy")
underch.stone.register_stone("Slate", "slate", "Mossy")
underch.stone.register_stone("Vindesite", "vindesite", "Mossy")
