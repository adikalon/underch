underch.dense_ores = {}

function underch.dense_ores.register_ore(name, id, base, texture, item)
	minetest.register_node("underch:" .. id .. "_dense_ore", {
		description = name,
		tiles = {base .. "^" .. texture .. "^(" .. texture .. "^[transform7)"},
		groups = {cracky = 1, jit_shadow = 1},
		after_dig_node = underch.jit.dig_shadow,
		drop = {
			items = {{items = {item .. " 2"}}, {items = {item}, rarity = 2}}
		},
		sounds = default.node_sound_stone_defaults(),
	})
end

underch.dense_ores.register_ore(underch.S("Amphibolite Coal Dense Ore"), "amphibolite_coal", "underch_amphibolite.png", "default_mineral_coal.png", "default:coal_lump");
underch.dense_ores.register_ore(underch.S("Schist Coal Dense Ore"), "schist_coal", "underch_schist.png", "default_mineral_coal.png", "default:coal_lump");
underch.dense_ores.register_ore(underch.S("Granite Iron Dense Ore"), "granite_iron", "underch_granite.png", "default_mineral_iron.png", "default:iron_lump");
underch.dense_ores.register_ore(underch.S("Gneiss Copper Dense Ore"), "gneiss_copper", "underch_gneiss.png", "default_mineral_copper.png", "default:copper_lump");
underch.dense_ores.register_ore(underch.S("Basalt Gold Dense Ore"), "basalt_gold", "underch_basalt.png", "default_mineral_gold.png", "default:gold_lump");
