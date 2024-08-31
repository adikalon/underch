-- used blocks
local c_air = minetest.get_content_id("air")
local c_stone = minetest.get_content_id("default:stone")

local c_dirt = minetest.get_content_id("default:dirt")
local c_cobble = minetest.get_content_id("default:cobble")
local c_mossycobble = minetest.get_content_id("default:mossycobble")
local c_cobblestair = nil
if minetest.registered_nodes["stairs:stair_cobble"] then
	if minetest.registered_aliases["stairs:stair_cobble"] then
		c_cobblestair = minetest.get_content_id(minetest.registered_aliases["stairs:stair_cobble"])
	else
		c_cobblestair = minetest.get_content_id("stairs:stair_cobble")
	end
end
local c_coalblock = minetest.get_content_id("default:coalblock")

local c_dust = minetest.get_content_id("underch:dust")
local c_coal_dust = minetest.get_content_id("underch:coal_dust")
local c_ruby_dust = minetest.get_content_id("underch:ruby_dust")
local c_amphibolite_coal_dense_ore = minetest.get_content_id("underch:amphibolite_coal_dense_ore")
local c_schist_coal_dense_ore = minetest.get_content_id("underch:schist_coal_dense_ore")
local c_granite_iron_dense_ore = minetest.get_content_id("underch:granite_iron_dense_ore")
local c_gneiss_copper_dense_ore = minetest.get_content_id("underch:gneiss_copper_dense_ore")
local c_basalt_gold_dense_ore = minetest.get_content_id("underch:basalt_gold_dense_ore")
local c_coal_diamond = minetest.get_content_id("underch:coal_diamond")

local c_vindesite_quartz_ore = minetest.get_content_id("underch:vindesite_quartz_ore")
local c_burner = minetest.get_content_id("underch:burner")

local c_black_slime = minetest.get_content_id("underch:dynamic_black_slime")
local c_black_slimy_block = minetest.get_content_id("underch:dynamic_black_slimy_block")
local c_green_slime = minetest.get_content_id("underch:dynamic_green_slime")
local c_green_slimy_block = minetest.get_content_id("underch:dynamic_green_slimy_block")
local c_red_slime = minetest.get_content_id("underch:dynamic_red_slime")
local c_red_slimy_block = minetest.get_content_id("underch:dynamic_red_slimy_block")
local c_purple_slime = minetest.get_content_id("underch:dynamic_purple_slime")
local c_purple_slimy_block = minetest.get_content_id("underch:dynamic_purple_slimy_block")

local c_brown_mushroom = minetest.get_content_id("flowers:mushroom_brown")
local c_red_mushroom = minetest.get_content_id("flowers:mushroom_red")
local c_black_mushroom = minetest.get_content_id("underch:black_mushroom")
local c_orange_mushroom = minetest.get_content_id("underch:orange_mushroom")
local c_green_mushroom = minetest.get_content_id("underch:green_mushroom")
local c_burning_mushroom = minetest.get_content_id("underch:burning_mushroom")
local c_dark_tuber = minetest.get_content_id("underch:dark_tuber")

local c_dark_sichamine = minetest.get_content_id("underch:dark_sichamine")
local c_weedy_sichamine = minetest.get_content_id("underch:weedy_sichamine")
local c_sichamine_lamp = minetest.get_content_id("underch:sichamine_lamp")

local c_mossy_dirt = minetest.get_content_id("underch:mossy_dirt")
local c_torchberries = minetest.get_content_id("underch:torchberries")
local c_moss = minetest.get_content_id("underch:moss")
local c_dry_moss = minetest.get_content_id("underch:dry_moss")
local c_underground_bush = minetest.get_content_id("underch:underground_bush")
local c_dead_bush = minetest.get_content_id("underch:dead_bush")
local c_mould = minetest.get_content_id("underch:mould")
local c_underground_vine = minetest.get_content_id("underch:underground_vine")

local c_amethyst_ore = minetest.get_content_id("underch:amethyst_ore")
local c_amethyst_crystal = minetest.get_content_id("underch:amethyst_crystal")
local c_emerald_ore = minetest.get_content_id("underch:emerald_ore")
local c_emerald_crystal = minetest.get_content_id("underch:emerald_crystal")
local c_ruby_ore = minetest.get_content_id("underch:ruby_ore")
local c_ruby_crystal = minetest.get_content_id("underch:ruby_crystal")
local c_saphire_ore = minetest.get_content_id("underch:saphire_ore")
local c_saphire_crystal = minetest.get_content_id("underch:saphire_crystal")
local c_aquamarine_ore = minetest.get_content_id("underch:aquamarine_ore")
local c_aquamarine_crystal = minetest.get_content_id("underch:aquamarine_crystal")
local c_quartz_ore = minetest.get_content_id("underch:quartz_ore")
local c_quartz_crystal = minetest.get_content_id("underch:quartz_crystal")
local c_mese_crystal = minetest.get_content_id("underch:mese_crystal")

local c_fire = minetest.get_content_id("fire:permanent_flame")
local c_fiery_dust = minetest.get_content_id("underch:fiery_dust")
local c_fiery_vine = minetest.get_content_id("underch:fiery_vine")
local c_lava_crack = minetest.get_content_id("underch:lava_crack")

local c_quartz_block = minetest.get_content_id("underch:quartz_block")
local c_aquamarine_block = minetest.get_content_id("underch:aquamarine_block")
local c_amethyst_block = minetest.get_content_id("underch:amethyst_block")

local c_malachite = minetest.get_content_id("underch:malachite")
local c_shinestone = minetest.get_content_id("underch:shinestone")
local c_basalt = minetest.get_content_id("underch:basalt")
local c_obsidian = minetest.get_content_id("default:obsidian")

local c_dynamic_malachite = minetest.get_content_id("underch:dynamic_malachite")
local c_dynamic_shinestone = minetest.get_content_id("underch:dynamic_shinestone")
local c_dynamic_basalt = minetest.get_content_id("underch:dynamic_basalt")
local c_dynamic_obsidian = minetest.get_content_id("underch:dynamic_obsidian")
local c_dynamic_underground_bush = minetest.get_content_id("underch:dynamic_underground_bush")
local c_dynamic_vindesite = minetest.get_content_id("underch:dynamic_vindesite")
local c_dynamic_dark_vindesite = minetest.get_content_id("underch:dynamic_dark_vindesite")

local c_dynamic_mossy_dirt = minetest.get_content_id("underch:dynamic_mossy_dirt")
local c_dynamic_jungle = minetest.get_content_id("underch:dynamic_jungle")
local c_dynamic_jungleg = minetest.get_content_id("underch:dynamic_jungleg")
local c_dynamic_sticks = minetest.get_content_id("underch:dynamic_sticks")

local c_dynamic_fire = minetest.get_content_id("underch:dynamic_fire")
local c_dynamic_fs = minetest.get_content_id("underch:dynamic_fs")
local c_dynamic_fo = minetest.get_content_id("underch:dynamic_fo")
local c_dynamic_fp = minetest.get_content_id("underch:dynamic_fp")
local c_dynamic_fa = minetest.get_content_id("underch:dynamic_fa")

--[[local c_amphibolite = minetest.get_content_id("underch:amphibolite")
local c_andesite = minetest.get_content_id("underch:andesite")
local c_aplite = minetest.get_content_id("underch:aplite")
local c_basalt = minetest.get_content_id("underch:basalt")
local c_dark_vindesite = minetest.get_content_id("underch:dark_vindesite")
local c_diorite = minetest.get_content_id("underch:diorite")
local c_dolomite = minetest.get_content_id("underch:dolomite")
local c_gabbro = minetest.get_content_id("underch:gabbro")
local c_gneiss = minetest.get_content_id("underch:gneiss")
local c_granite = minetest.get_content_id("underch:granite")
local c_green_slimestone = minetest.get_content_id("underch:green_slimestone")
local c_hektorite = minetest.get_content_id("underch:hektorite")
local c_limestone = minetest.get_content_id("underch:limestone")
local c_marble = minetest.get_content_id("underch:marble")
local c_pegmatite = minetest.get_content_id("underch:pegmatite")
local c_peridotite = minetest.get_content_id("underch:peridotite")
local c_phonolite = minetest.get_content_id("underch:phonolite")
local c_phylite = minetest.get_content_id("underch:phylite")
local c_purple_slimestone = minetest.get_content_id("underch:purple_slimestone")
local c_basalt = minetest.get_content_id("underch:basalt")
local c_quartzite = minetest.get_content_id("underch:quartzite")
local c_basalt = minetest.get_content_id("underch:basalt")
local c_red_slimestone = minetest.get_content_id("underch:red_slimestone")
local c_schist = minetest.get_content_id("underch:schist")
local c_sichamine = minetest.get_content_id("underch:sichamine")
local c_slate = minetest.get_content_id("underch:slate")
local c_vindesite = minetest.get_content_id("underch:vindesite")--]]

local c_stone_with_coal = minetest.get_content_id("default:stone_with_coal")
local c_stone_with_iron = minetest.get_content_id("default:stone_with_iron")
local c_stone_with_copper = minetest.get_content_id("default:stone_with_copper")
local c_stone_with_tin = minetest.get_content_id("default:stone_with_tin")
local c_stone_with_mese = minetest.get_content_id("default:stone_with_mese")
local c_stone_with_gold = minetest.get_content_id("default:stone_with_gold")
local c_stone_with_diamond = minetest.get_content_id("default:stone_with_diamond")
local c_alien_mese_ore = nil
local c_alien_diamond_ore = nil
local c_stone_with_februm = nil
local c_stone_with_egerum = nil

if underch.have_alien_material then
	c_alien_mese_ore = minetest.get_content_id("alien_material:alien_mese_ore")
	c_alien_diamond_ore = minetest.get_content_id("alien_material:alien_diamond_ore")
end

if underch.have_magic_materials then
	c_stone_with_februm = minetest.get_content_id("magic_materials:stone_with_februm")
	c_stone_with_egerum = minetest.get_content_id("magic_materials:stone_with_egerum")
end

function underch.use_stone(vi, data, id)
	underch.functions.replace(vi, data, c_stone, underch.stone.defs[id].base)
	underch.functions.replace(vi, data, c_cobble, underch.stone.defs[id].cobble)
	underch.functions.replace(vi, data, c_mossycobble, underch.stone.defs[id].mossy)
	underch.functions.replace(vi, data, c_cobblestair, underch.stone.defs[id].stair)
	underch.functions.replace(vi, data, c_stone_with_coal, underch.stone.defs[id].with_coal)
	underch.functions.replace(vi, data, c_stone_with_iron, underch.stone.defs[id].with_iron)
	underch.functions.replace(vi, data, c_stone_with_copper, underch.stone.defs[id].with_copper)
	underch.functions.replace(vi, data, c_stone_with_tin, underch.stone.defs[id].with_tin)
	underch.functions.replace(vi, data, c_stone_with_mese, underch.stone.defs[id].with_mese)
	underch.functions.replace(vi, data, c_stone_with_gold, underch.stone.defs[id].with_gold)
	underch.functions.replace(vi, data, c_stone_with_diamond, underch.stone.defs[id].with_diamond)

	if underch.have_alien_material then
		underch.functions.replace(vi, data, c_alien_mese_ore, underch.stone.defs[id].alien_mese_ore)
		underch.functions.replace(vi, data, c_alien_diamond_ore, underch.stone.defs[id].alien_diamond_ore)
	end

	if underch.have_magic_materials then
		underch.functions.replace(vi, data, c_stone_with_februm, underch.stone.defs[id].with_februm)
		underch.functions.replace(vi, data, c_stone_with_egerum, underch.stone.defs[id].with_egerum)
	end
end

-- Biome definitions
if underch.use_jit then
	local function do_nothing(x, y, z, vi, data, p2data, area, lastlayer)
	end
	underch.biomegen = {
		--dolomite
		[1] = do_nothing,
		--limestone
		[2] = do_nothing,
		--schist
		[3] = do_nothing,
		--andesite
		[4] = do_nothing,
		--phylite
		[5] = do_nothing,
		--quartzite
		[6] = do_nothing,
		--amphibolite
		[7] = do_nothing,
		--slate
		[8] = do_nothing,
		--gneiss
		[9] = do_nothing,
		--phonolite
		[10] = do_nothing,
		--aplite
		[11] = do_nothing,
		--basalt
		[12] = do_nothing,
		--diorite
		[13] = do_nothing,
		--pegmatite
		[14] = do_nothing,
		--granite
		[15] = do_nothing,
		--gabbro
		[16] = do_nothing,
		--marble
		[17] = do_nothing,
		--peridotite
		[18] = do_nothing,
		--dolomite + mould
		[19] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_mould, 1/9, lastlayer)
		end,
		--quartzite + mould
		[20] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_mould, 1/9, lastlayer)
		end,
		--slate + mould
		[21] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_moss, 1/3, lastlayer)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_dirt, c_air, c_moss, 1/3, lastlayer)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_brown_mushroom, 1/18)
		end,
		--aplite + mould
		[22] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_moss, 1/3, lastlayer)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_dirt, c_air, c_moss, 1/3, lastlayer)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_brown_mushroom, 1/18)
		end,
		--dust
		[23] = do_nothing,
		--coal
		[24] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_coal_dust, 1/9)
		end,
		--torchberries
		[25] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.on_roof(x, y, z, vi, area, data, c_stone, c_air, c_torchberries, 1/30, lastlayer)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_brown_mushroom, 1/18)
		end,
		--tubers
		[26] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_black_mushroom, 1/18)
			underch.functions.on_floor_rr(x, y, z, vi, area, data, p2data, c_stone, c_air, c_dark_tuber, 1/50)
		end,
		--quartz
		[27] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.on_wall_f(x, y, z, vi, area, data, p2data, c_stone, c_air, c_quartz_crystal, 1/50, lastlayer)
		end,
		--emerald
		[28] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.on_wall_f(x, y, z, vi, area, data, p2data, c_stone, c_air, c_emerald_crystal, 1/201, lastlayer)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_fire, 1/1000)
		end,
		--moss
		[29] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_moss, 1/3, lastlayer)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_dirt, c_air, c_moss, 1/3, lastlayer)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_brown_mushroom, 1/18)
		end,
		--torchberries + jungle
		[30] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.on_roof(x, y, z, vi, area, data, c_stone, c_air, c_torchberries, 1/30, lastlayer)
		end,
		--jungle
		[31] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_jungle, 1/50)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_mould, 1/9, lastlayer)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_underground_vine, 1/15, lastlayer)
		end,
		--marble + mould
		[32] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_mould, 1/9, lastlayer)
		end,
		--fiery vines
		[33] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_fs, 1/300)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_coal_dust, 1/9)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_fiery_vine, 1/15, lastlayer)
		end,
		--fungi 2
		[34] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_brown_mushroom, 1/40)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_red_mushroom, 1/40)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_black_mushroom, 1/20)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_green_mushroom, 1/20)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_mould, 1/9, lastlayer)
		end,
		--fiery fungi
		[35] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_fp, 1/300)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_fiery_vine, 1/15, lastlayer)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_burning_mushroom, 1/18)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_orange_mushroom, 1/18)
		end,
		--mese + saphire
		[36] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_green_mushroom, 1/18)
			underch.functions.on_wall_f(x, y, z, vi, area, data, p2data, c_stone, c_air, c_saphire_crystal, 1/201, lastlayer)
			underch.functions.on_wall_f(x, y, z, vi, area, data, p2data, c_stone, c_air, c_mese_crystal, 1/201, lastlayer)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_underground_vine, 1/15, lastlayer)
		end,
		--ruby
		[37] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_orange_mushroom, 1/18)
			underch.functions.in_floor(x, y, z, vi, area, data, c_air, c_stone, c_ruby_dust, 1/450)
			underch.functions.on_wall_f(x, y, z, vi, area, data, p2data, c_stone, c_air, c_ruby_crystal, 1/201, lastlayer)
		end,
		--sticks
		[38] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_dry_moss, 1/3, lastlayer)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_dirt, c_air, c_dry_moss, 1/3, lastlayer)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_orange_mushroom, 1/18)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_sticks, 1/100)
		end,
		--aquamarine + amethyst
		[39] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.on_wall_f(x, y, z, vi, area, data, p2data, c_stone, c_air, c_aquamarine_crystal, 1/50, lastlayer)
			underch.functions.on_wall_f(x, y, z, vi, area, data, p2data, c_stone, c_air, c_amethyst_crystal, 1/50, lastlayer)
		end,
		--fiery vines + jungle
		[40] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_jungle, 1/50)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_fa, 1/300)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_fiery_vine, 1/15, lastlayer)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_red_mushroom, 1/27)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_brown_mushroom, 1/27)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_orange_mushroom, 1/27)
		end,
		--jungle
		[41] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_jungleg, 1/50)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_burning_mushroom, 1/18)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_orange_mushroom, 1/18)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_underground_vine, 1/15, lastlayer)
		end,
		--malachite + basalt
		[42] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_burning_mushroom, 1/18)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_basalt, 1/200)
		end,
		--sichamine
		[43] = do_nothing,
		--sichamine shadow
		[44] = do_nothing,
		--omphyrite
		[45] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_fo, 1/300)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_burning_mushroom, 1/18)
		end,
		--lava cracks
		[46] = do_nothing,
		--emutite
		[47] = do_nothing,
		--hektorite + shinestone
		[48] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.on_roof(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_shinestone, 1/50, lastlayer)
		end,
		--afualite + diamonds + obsidian
		[49] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_obsidian, 1/20)
		end,
		--quartz
		[50] = do_nothing,
		--green slime
		[51] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_green_slime, 1/1800)
		end,
		--purple slime
		[52] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_purple_slime, 1/1800)
		end,
		--red slime
		[53] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_red_slime, 1/1800)
		end,
		--vindesite
		[54] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.on_floor(x, y, z, vi, area, data, underch.stone.defs["vindesite"].base, c_air, c_black_mushroom, 1/18)
		end,
		--darkness
		[55] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.on_floor(x, y, z, vi, area, data, underch.stone.defs["dark_vindesite"].base, c_air, c_black_mushroom, 1/18)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_black_slime, 1/1800)
		end,
	}
else
	underch.biomegen = {
		--dolomite
		[1] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "dolomite")
		end,
		--limestone
		[2] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "limestone")
		end,
		--schist
		[3] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "schist")
		end,
		--andesite
		[4] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "andesite")
		end,
		--phylite
		[5] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "phylite")
		end,
		--quartzite
		[6] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "quartzite")
		end,
		--amphibolite
		[7] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "amphibolite")
		end,
		--slate
		[8] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "slate")
		end,
		--gneiss
		[9] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "gneiss")
		end,
		--phonolite
		[10] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "phonolite")
		end,
		--aplite
		[11] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "aplite")
		end,
		--basalt
		[12] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "basalt")
		end,
		--diorite
		[13] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "diorite")
		end,
		--pegmatite
		[14] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "pegmatite")
		end,
		--granite
		[15] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "granite")
		end,
		--gabbro
		[16] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "gabbro")
		end,
		--marble
		[17] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "marble")
		end,
		--peridotite
		[18] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "peridotite")
		end,
		--dolomite + mould
		[19] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "dolomite")
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_mould, 1/9, lastlayer, underch.stone.defs["dolomite"].base)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_green_mushroom, 1/18, underch.stone.defs["dolomite"].base)
		end,
		--quartzite + mould
		[20] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "quartzite")
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_mould, 1/9, lastlayer, underch.stone.defs["quartzite"].base)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_green_mushroom, 1/18, underch.stone.defs["quartzite"].base)
		end,
		--slate + mould
		[21] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "slate")
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_moss, 1/3, lastlayer, underch.stone.defs["slate"].base)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_dirt, c_air, c_moss, 1/3, lastlayer)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_brown_mushroom, 1/18, underch.stone.defs["slate"].base)
			-- brown mush + tubers + moss
		end,
		--aplite + mould
		[22] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "aplite")
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_moss, 1/3, lastlayer, underch.stone.defs["aplite"].base)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_dirt, c_air, c_moss, 1/3, lastlayer)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_brown_mushroom, 1/18, underch.stone.defs["aplite"].base)
		end,
		--dust
		[23] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "limestone")
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_dust, 1, underch.stone.defs["limestone"].base)
		end,
		--coal
		[24] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "amphibolite")
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_coal_dust, 1/9, underch.stone.defs["amphibolite"].base)
			--underch.functions.ore(vi, data, underch.stone.defs["amphibolite"].base, c_coal_dust, 1/9)
			underch.functions.ore(vi, data, underch.stone.defs["amphibolite"].base, c_amphibolite_coal_dense_ore, 1/201)
		end,
		--torchberries
		[25] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "phonolite")
			underch.functions.on_roof(x, y, z, vi, area, data, c_stone, c_air, c_torchberries, 1/30, lastlayer, underch.stone.defs["phonolite"].base)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_brown_mushroom, 1/18, underch.stone.defs["phonolite"].base)
		end,
		--tubers
		[26] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "schist")
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_black_mushroom, 1/18, underch.stone.defs["schist"].base)
			underch.functions.on_floor_rr(x, y, z, vi, area, data, p2data, c_stone, c_air, c_dark_tuber, 1/50, underch.stone.defs["schist"].base)
			underch.functions.ore(vi, data, underch.stone.defs["schist"].base, c_schist_coal_dense_ore, 1/201)
		end,
		--quartz
		[27] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "diorite")
			underch.functions.ore(vi, data, underch.stone.defs["diorite"].base, c_quartz_ore, 1/50)
			underch.functions.on_wall_f(x, y, z, vi, area, data, p2data, c_stone, c_air, c_quartz_crystal, 1/50, lastlayer, underch.stone.defs["diorite"].base)
		end,
		--emerald
		[28] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "phonolite")
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_green_mushroom, 1/18, underch.stone.defs["phonolite"].base)
			underch.functions.ore(vi, data, underch.stone.defs["phonolite"].base, c_emerald_ore, 1/201)
			underch.functions.on_wall_f(x, y, z, vi, area, data, p2data, c_stone, c_air, c_emerald_crystal, 1/201, lastlayer, underch.stone.defs["phonolite"].base)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_fire, 1/1000, underch.stone.defs["phonolite"].base)
		end,
		--moss
		[29] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "basalt")
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_moss, 1/3, lastlayer, underch.stone.defs["basalt"].base)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_dirt, c_air, c_moss, 1/3, lastlayer)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_brown_mushroom, 1/18, underch.stone.defs["basalt"].base)
			underch.functions.ore(vi, data, underch.stone.defs["basalt"].cobble, underch.stone.defs["basalt"].mossy, 3/4)
		end,
		--torchberries + jungle
		[30] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "granite")
			underch.functions.on_roof(x, y, z, vi, area, data, c_stone, c_air, c_torchberries, 1/30, lastlayer, underch.stone.defs["granite"].base)
			underch.functions.ore(vi, data, underch.stone.defs["granite"].base, c_dynamic_mossy_dirt, 1/100)
		end,
		--jungle
		[31] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "andesite")
			underch.functions.ore(vi, data, underch.stone.defs["andesite"].base, c_dynamic_jungle, 1/100)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_mould, 1/9, lastlayer, underch.stone.defs["andesite"].base)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_underground_vine, 1/15, lastlayer, underch.stone.defs["andesite"].base)
		end,
		--marble + mould
		[32] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "marble")
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_mould, 1/9, lastlayer, underch.stone.defs["dolomite"].base)
		end,
		--fiery vines
		[33] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "schist")
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_fs, 1/300, underch.stone.defs["schist"].base)
			--underch.functions.ore(vi, data, underch.stone.defs["schist"].base, c_fiery_dust, 1/9)
			--underch.functions.ore(vi, data, underch.stone.defs["schist"].base, c_coal_dust, 1/9)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_coal_dust, 1/9, underch.stone.defs["schist"].base)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_fiery_vine, 1/15, lastlayer, underch.stone.defs["schist"].base)
		end,
		--fungi 2
		[34] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "phylite")
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_brown_mushroom, 1/40, underch.stone.defs["phylite"].base)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_red_mushroom, 1/40, underch.stone.defs["phylite"].base)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_black_mushroom, 1/20, underch.stone.defs["phylite"].base)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_green_mushroom, 1/20, underch.stone.defs["phylite"].base)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_mould, 1/9, lastlayer, underch.stone.defs["phylite"].base)
		end,
		--fiery fungi
		[35] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "pegmatite")
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_fp, 1/300, underch.stone.defs["pegmatite"].base)
			--underch.functions.ore(vi, data, c_stone, c_fiery_dust, 1/23)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_fiery_vine, 1/15, lastlayer, underch.stone.defs["pegmatite"].base)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_burning_mushroom, 1/18, underch.stone.defs["pegmatite"].base)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_orange_mushroom, 1/18, underch.stone.defs["pegmatite"].base)
		end,
		--mese + saphire
		[36] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "gneiss")
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_green_mushroom, 1/18, underch.stone.defs["gneiss"].base)
			underch.functions.ore(vi, data, underch.stone.defs["gneiss"].base, c_saphire_ore, 1/201)
			underch.functions.on_wall_f(x, y, z, vi, area, data, p2data, c_stone, c_air, c_saphire_crystal, 1/201, lastlayer, underch.stone.defs["gneiss"].base)
			underch.functions.on_wall_f(x, y, z, vi, area, data, p2data, c_stone, c_air, c_mese_crystal, 1/201, lastlayer, underch.stone.defs["gneiss"].base)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_underground_vine, 1/15, lastlayer, underch.stone.defs["gneiss"].base)
			underch.functions.ore(vi, data, underch.stone.defs["gneiss"].base, c_gneiss_copper_dense_ore, 1/201)
		end,
		--ruby
		[37] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "granite")
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_orange_mushroom, 1/18, underch.stone.defs["granite"].base)
			underch.functions.ore(vi, data, underch.stone.defs["granite"].base, c_ruby_ore, 1/201)
			underch.functions.in_floor(x, y, z, vi, area, data, c_air, c_stone, c_ruby_dust, 1/450, underch.stone.defs["granite"].base)
			underch.functions.on_wall_f(x, y, z, vi, area, data, p2data, c_stone, c_air, c_ruby_crystal, 1/201, lastlayer, underch.stone.defs["granite"].base)
			underch.functions.ore(vi, data, underch.stone.defs["granite"].base, c_granite_iron_dense_ore, 1/207)
		end,
		--sticks
		[38] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "basalt")
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_dry_moss, 1/3, lastlayer, underch.stone.defs["basalt"].base)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_dirt, c_air, c_dry_moss, 1/3, lastlayer)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_orange_mushroom, 1/18, underch.stone.defs["basalt"].base)
			underch.functions.ore(vi, data, underch.stone.defs["basalt"].base, c_dynamic_sticks, 1/200)
			underch.functions.ore(vi, data, underch.stone.defs["basalt"].base, c_basalt_gold_dense_ore, 1/407)
		end,
		--aquamarine + amethyst
		[39] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "diorite")
			underch.functions.ore(vi, data, underch.stone.defs["diorite"].base, c_aquamarine_ore, 1/50)
			underch.functions.on_wall_f(x, y, z, vi, area, data, p2data, c_stone, c_air, c_aquamarine_crystal, 1/50, lastlayer, underch.stone.defs["diorite"].base)
			underch.functions.ore(vi, data, underch.stone.defs["diorite"].base, c_amethyst_ore, 1/50)
			underch.functions.on_wall_f(x, y, z, vi, area, data, p2data, c_stone, c_air, c_amethyst_crystal, 1/50, lastlayer, underch.stone.defs["diorite"].base)
		end,
		--fiery vines + jungle
		[40] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "andesite")
			underch.functions.ore(vi, data, underch.stone.defs["andesite"].base, c_dynamic_jungle, 1/100)
			--underch.functions.ore(vi, data, underch.stone.defs["andesite"].base, c_fiery_dust, 1/9)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_fa, 1/300, underch.stone.defs["andesite"].base)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_fiery_vine, 1/15, lastlayer, underch.stone.defs["andesite"].base)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_red_mushroom, 1/27, underch.stone.defs["andesite"].base)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_brown_mushroom, 1/27, underch.stone.defs["andesite"].base)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_orange_mushroom, 1/27, underch.stone.defs["andesite"].base)
		end,
		--jungle
		[41] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "gabbro")
			underch.functions.ore(vi, data, underch.stone.defs["gabbro"].base, c_dynamic_jungleg, 1/100)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_burning_mushroom, 1/18, underch.stone.defs["gabbro"].base)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_orange_mushroom, 1/18, underch.stone.defs["gabbro"].base)
			underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_underground_vine, 1/15, lastlayer, underch.stone.defs["gabbro"].base)
		end,
		--malachite + basalt
		[42] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "peridotite")
			underch.functions.ore(vi, data, underch.stone.defs["peridotite"].base, c_dynamic_malachite, 1/300)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_burning_mushroom, 1/18, underch.stone.defs["peridotite"].base)
			underch.functions.ore(vi, data, underch.stone.defs["peridotite"].base, c_dynamic_basalt, 1/200)
		end,
		--sichamine
		[43] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "sichamine")
			-- underch.functions.ore(vi, data, c_sichamine, c_weedy_sichamine, 1/3)
			underch.functions.ore(vi, data, underch.stone.defs["sichamine"].base, c_sichamine_lamp, 1/25)
		end,
		--sichamine shadow
		[44] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "sichamine")
			-- underch.functions.ore(vi, data, c_sichamine, c_weedy_sichamine, 1/3)
			underch.functions.ore(vi, data, underch.stone.defs["sichamine"].base, c_dark_sichamine, 1/9)
		end,
		--omphyrite
		[45] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "omphyrite")
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_fo, 1/300, underch.stone.defs["omphyrite"].base)
			--underch.functions.ore(vi, data, underch.stone.defs["omphyrite"].base, c_fiery_dust, 1/13)
			underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_burning_mushroom, 1/18, underch.stone.defs["omphyrite"].base)
		end,
		--lava cracks
		[46] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "omphyrite")
			underch.functions.ore(vi, data, underch.stone.defs["omphyrite"].base, c_lava_crack, 1/18)
		end,
		--emutite
		[47] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "emutite")
		end,
		--hektorite + shinestone
		[48] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "hektorite")
			underch.functions.on_roof(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_shinestone, 1/50, lastlayer, underch.stone.defs["hektorite"].base)
		end,
		--afualite + diamonds + obsidian
		[49] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "afualite")
			underch.functions.ore(vi, data, underch.stone.defs["afualite"].base, c_coalblock, 1/18)
			underch.functions.ore(vi, data, c_coalblock, c_coal_diamond, 1/72)
			underch.functions.ore(vi, data, underch.stone.defs["afualite"].base, c_dynamic_vindesite, 1/300)
			underch.functions.ore(vi, data, underch.stone.defs["afualite"].base, c_dynamic_dark_vindesite, 1/300)
			underch.functions.ore(vi, data, underch.stone.defs["afualite"].base, c_dynamic_obsidian, 1/20)
		end,
		--quartz
		[50] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.functions.replace(vi, data, c_stone, c_quartz_block)
			underch.functions.ore(vi, data, c_quartz_block, c_aquamarine_block, 1/4)
			underch.functions.ore(vi, data, c_quartz_block, c_amethyst_block, 1/3)
			underch.functions.ore(vi, data, c_quartz_block, c_sichamine_lamp, 1/25)
			underch.use_stone(vi, data, "sichamine")
		end,
		--green slime
		[51] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "green_slimestone")
			underch.functions.ore(vi, data, underch.stone.defs["green_slimestone"].base, c_green_slimy_block, 1/1000)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_green_slime, 1/1800, underch.stone.defs["green_slimestone"].base)
		end,
		--purple slime
		[52] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "purple_slimestone")
			underch.functions.ore(vi, data, underch.stone.defs["purple_slimestone"].base, c_purple_slimy_block, 1/300)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_purple_slime, 1/1800, underch.stone.defs["purple_slimestone"].base)
		end,
		--red slime
		[53] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "red_slimestone")
			underch.functions.ore(vi, data, underch.stone.defs["red_slimestone"].base, c_red_slimy_block, 1/300)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_red_slime, 1/1800, underch.stone.defs["red_slimestone"].base)
		end,
		--vindesite
		[54] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "vindesite")
			underch.functions.ore(vi, data, underch.stone.defs["vindesite"].base, c_vindesite_quartz_ore, 1/50)
			underch.functions.on_floor(x, y, z, vi, area, data, underch.stone.defs["vindesite"].base, c_air, c_black_mushroom, 1/18)
		end,
		--darkness
		[55] = function(x, y, z, vi, data, p2data, area, lastlayer)
			underch.use_stone(vi, data, "dark_vindesite")
			underch.functions.ore(vi, data, underch.stone.defs["dark_vindesite"].base, c_burner, 1/15)
			underch.functions.on_floor(x, y, z, vi, area, data, underch.stone.defs["dark_vindesite"].base, c_air, c_black_mushroom, 1/18)
			underch.functions.ore(vi, data, underch.stone.defs["slate"].base, c_black_slimy_block, 1/1000)
			underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_black_slime, 1/1800, underch.stone.defs["slate"].base)
		end,
	}
end

;underch.np_darkness = {
	offset = 0,
	scale = 1,
	spread = {x=200, y=200, z=200},
	seed = 6830,
	octaves = 3,
	persist = 0.5
}

underch.np_water = {
	offset = 0,
	scale = 1,
	spread = {x=200, y=200, z=200},
	seed = 6831,
	octaves = 3,
	persist = 0.5
}

underch.np_pressure = {
	offset = 0,
	scale = 1,
	spread = {x=200, y=200, z=200},
	seed = 6832,
	octaves = 3,
	persist = 0.5
}

minetest.register_on_generated(function(minp, maxp, seed)

	--easy reference to commonly used values
	--local t1 = os.clock()
	local x1 = maxp.x
	local y1 = maxp.y
	local z1 = maxp.z
	local x0 = minp.x
	local y0 = minp.y
	local z0 = minp.z

	local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
	local area = VoxelArea:new{MinEdge=emin, MaxEdge=emax}
	local data = vm:get_data()
	local p2data = vm:get_param2_data()

	--mandatory values
	local sidelen = x1 - x0 + 1 --length of a mapblock
	local chulens = {x=sidelen, y=sidelen, z=sidelen} --table of chunk edges
	local chulens2D = {x=sidelen, y=sidelen, z=1}
	local minposxyz = {x=x0, y=y0, z=z0} --bottom corner
	local minposxz = {x=x0, y=z0} --2D bottom corner

	local nvals_darkness = minetest.get_perlin_map(underch.np_darkness, chulens):get_3d_map_flat(minposxyz)
	local nvals_water = minetest.get_perlin_map(underch.np_water, chulens):get_3d_map_flat(minposxyz)
	local nvals_pressure = minetest.get_perlin_map(underch.np_pressure, chulens):get_3d_map_flat(minposxyz)

	local nixyz = 1 --3D node index
	local nixz = 1 --2D node index
	local nixyz2 = 1 --second 3D index for second loop


	for z = z0, z1 do -- for each xy plane progressing northwards
		--increment indices
		nixyz = nixyz + 1

		for y = y0, y1 do -- for each x row progressing upwards

			local vi = area:index(x0, y, z)
			for x = x0, x1 do -- for each node do

				local darkness = nvals_darkness[nixyz2]
				local water = nvals_water[nixyz2]
				local pressure = underch.functions.get_pressure(y, nvals_pressure[nixyz2])

				--[[if y > -100 then -- limit the biome variety near surface
					darkness = -0.01*y*darkness - 1 - 0.01*y
					water = -0.01*y*water - 1 - 0.01*y
				end--]]
				local biome = underch.functions.get_biome(darkness, water, pressure, y)

				-- if (biome < 1) or (biome > 62) then
				-- 	print(string.format("Wrong biome %i", biome))
				-- 	biome = 1
				-- end

				if y <= underch.layers.layer_1 and y >= underch.layers.layer_end then
					underch.biomegen[biome](x, y, z, vi, data, p2data, area, y == y1)
				end

				if data[vi] == c_stone then
					if underch.functions.is_crust(x, y, z, vi, area, data, c_stone) then
						data[vi] = underch.c_crust
					else
						data[vi] = underch.c_bulk
					end
				end

				nixyz2 = nixyz2 + 1
				nixz = nixz + 1
				vi = vi + 1
			end
			nixz = nixz - sidelen --shift the 2D index back
		end
		nixz = nixz + sidelen --shift the 2D index up a layer
	end

	--send data back to voxelmanip
	vm:set_data(data)
	vm:set_param2_data(p2data)
	--calc lighting
	vm:set_lighting({day=0, night=0})
	vm:calc_lighting()
	--write it to world
	vm:write_to_map(data)

	--local chugent = math.ceil((os.clock() - t1) * 1000) --grab how long it took
	--print ("[caverealms] "..chugent.." ms") --tell people how long
end)
