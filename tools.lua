-- tools

minetest.register_tool("underch:sword_emerald", {
	description = underch.S("Emerald Sword"),
	inventory_image = "underch_sword_emerald.png",
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level = 1,
		groupcaps = {
			snappy={times = {[1] = 0.95, [2] = 0.45, [3] = 0.15}, uses = 5, maxlevel = 3},
		},
		damage_groups = {fleshy = 16},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1},
})

minetest.register_tool("underch:sword_ruby", {
	description = underch.S("Ruby Sword"),
	inventory_image = "underch_sword_ruby.png",
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level = 1,
		groupcaps = {
			snappy={times = {[1] = 0.95, [2] = 0.45, [3] = 0.15}, uses = 3, maxlevel = 3},
		},
		damage_groups = {fleshy = 32},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1},
})

minetest.register_tool("underch:sword_saphire", {
	description = underch.S("Saphire Sword"),
	inventory_image = "underch_sword_saphire.png",
	tool_capabilities = {
		full_punch_interval = 0.4,
		max_drop_level = 1,
		groupcaps = {
			snappy={times = {[1] = 0.95, [2] = 0.45, [3] = 0.15}, uses = 1, maxlevel = 3},
		},
		damage_groups = {fleshy = 64},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1},
})

-- crafts

minetest.register_craft({
	output = "underch:sword_emerald",
	recipe = {
		{"", "underch:emerald", ""},
		{"", "underch:emerald", ""},
		{"", "default:stick",   ""},
	}
})

minetest.register_craft({
	output = "underch:sword_ruby",
	recipe = {
		{"", "underch:ruby", ""},
		{"", "underch:ruby", ""},
		{"", "default:stick",""},
	}
})

minetest.register_craft({
	output = "underch:sword_saphire",
	recipe = {
		{"", "underch:saphire", ""},
		{"", "underch:saphire", ""},
		{"", "default:stick",   ""},
	}
})

-- toolranks

if underch.have_toolranks then
	minetest.override_item("underch:sword_emerald", {
		description = toolranks.create_description(underch.S("Emerald Sword"), 0, 0),
		original_description = underch.S("Emerald Sword"),
		after_use = toolranks.new_afteruse
	})

	minetest.override_item("underch:sword_ruby", {
		description = toolranks.create_description(underch.S("Ruby Sword"), 0, 0),
		original_description = underch.S("Ruby Sword"),
		after_use = toolranks.new_afteruse
	})

	minetest.override_item("underch:sword_saphire", {
		description = toolranks.create_description(underch.S("Saphire Sword"), 0, 0),
		original_description = underch.S("Saphire Sword"),
		after_use = toolranks.new_afteruse
	})
end
