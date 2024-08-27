underch.dense_ores = {}

function underch.dense_ores.register_ore(name, id, base, texture, item)
	minetest.register_node("underch:" .. id .. "_dense_ore", {
		description = name .. " Dense Ore",
		tiles = {base .. "^" .. texture .. "^(" .. texture .. "^[transform7)"},
		groups = {cracky = 1, jit_shadow = 1},
		after_dig_node = underch.jit.dig_shadow,
		drop = {
			items = {{items = {item .. " 2"}}, {items = {item}, rarity = 2}}
		},
		sounds = default.node_sound_stone_defaults(),
	})
end

underch.dense_ores.register_ore("Amphibolite Coal", "amphibolite_coal", "underch_amphibolite.png", "default_mineral_coal.png", "default:coal_lump");
underch.dense_ores.register_ore("Schist Coal", "schist_coal", "underch_schist.png", "default_mineral_coal.png", "default:coal_lump");
underch.dense_ores.register_ore("Granite Iron", "granite_iron", "underch_granite.png", "default_mineral_iron.png", "default:iron_lump");
underch.dense_ores.register_ore("Gneiss Copper", "gneiss_copper", "underch_gneiss.png", "default_mineral_copper.png", "default:copper_lump");
underch.dense_ores.register_ore("Basalt Gold", "basalt_gold", "underch_basalt.png", "default_mineral_gold.png", "default:gold_lump");
