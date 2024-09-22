-- tools

minetest.register_tool("underch:sword_emerald", {
	description = underch.S("Emerald Sword"),
	inventory_image = "underch_sword_emerald.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level = 1,
		groupcaps = {
			snappy={times = {[1] = 1.90, [2] = 0.90, [3] = 0.30}, uses = 20, maxlevel = 3},
		},
		damage_groups = {fleshy = 16},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1},
})

minetest.register_tool("underch:pick_emerald", {
	description = underch.S("Emerald Pickaxe"),
	inventory_image = "underch_pick_emerald.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 3,
		groupcaps = {
			cracky = {times = {[1] = 2.0, [2] = 1.0, [3] = 0.50}, uses = 15, maxlevel = 3},
		},
		damage_groups = {fleshy = 10},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1},
})

minetest.register_tool("underch:shovel_emerald", {
	description = underch.S("Emerald Shovel"),
	inventory_image = "underch_shovel_emerald.png",
	wield_image = "underch_shovel_emerald.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level = 1,
		groupcaps = {
			crumbly = {times = {[1] = 1.10, [2] = 0.50, [3] = 0.30}, uses = 15, maxlevel = 3},
		},
		damage_groups = {fleshy = 8},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1},
})

minetest.register_tool("underch:axe_emerald", {
	description = underch.S("Emerald Axe"),
	inventory_image = "underch_axe_emerald.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 1,
		groupcaps = {
			choppy = {times = {[1] = 2.10, [2] = 0.90, [3] = 0.50}, uses = 15, maxlevel = 3},
		},
		damage_groups = {fleshy = 14},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1},
})

minetest.register_tool("underch:sword_ruby", {
	description = underch.S("Ruby Sword"),
	inventory_image = "underch_sword_ruby.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level = 1,
		groupcaps = {
			snappy={times = {[1] = 1.90, [2] = 0.90, [3] = 0.30}, uses = 10, maxlevel = 3},
		},
		damage_groups = {fleshy = 32},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1},
})

minetest.register_tool("underch:pick_ruby", {
	description = underch.S("Ruby Pickaxe"),
	inventory_image = "underch_pick_ruby.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 3,
		groupcaps = {
			cracky = {times = {[1] = 2.0, [2] = 1.0, [3] = 0.50}, uses = 8, maxlevel = 3},
		},
		damage_groups = {fleshy = 20},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1},
})

minetest.register_tool("underch:shovel_ruby", {
	description = underch.S("Ruby Shovel"),
	inventory_image = "underch_shovel_ruby.png",
	wield_image = "underch_shovel_ruby.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level = 1,
		groupcaps = {
			crumbly = {times = {[1] = 1.10, [2] = 0.50, [3] = 0.30}, uses = 8, maxlevel = 3},
		},
		damage_groups = {fleshy = 16},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1},
})

minetest.register_tool("underch:axe_ruby", {
	description = underch.S("Ruby Axe"),
	inventory_image = "underch_axe_ruby.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 1,
		groupcaps = {
			choppy = {times = {[1] = 2.10, [2] = 0.90, [3] = 0.50}, uses = 8, maxlevel = 3},
		},
		damage_groups = {fleshy = 28},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1},
})

minetest.register_tool("underch:sword_saphire", {
	description = underch.S("Saphire Sword"),
	inventory_image = "underch_sword_saphire.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level = 1,
		groupcaps = {
			snappy={times = {[1] = 1.90, [2] = 0.90, [3] = 0.30}, uses = 5, maxlevel = 3},
		},
		damage_groups = {fleshy = 64},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1},
})

minetest.register_tool("underch:pick_saphire", {
	description = underch.S("Saphire Pickaxe"),
	inventory_image = "underch_pick_saphire.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 3,
		groupcaps = {
			cracky = {times = {[1] = 2.0, [2] = 1.0, [3] = 0.50}, uses = 4, maxlevel = 3},
		},
		damage_groups = {fleshy = 40},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1},
})

minetest.register_tool("underch:shovel_saphire", {
	description = underch.S("Saphire Shovel"),
	inventory_image = "underch_shovel_saphire.png",
	wield_image = "underch_shovel_saphire.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level = 1,
		groupcaps = {
			crumbly = {times = {[1] = 1.10, [2] = 0.50, [3] = 0.30}, uses = 4, maxlevel = 3},
		},
		damage_groups = {fleshy = 32},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1},
})

minetest.register_tool("underch:axe_saphire", {
	description = underch.S("Saphire Axe"),
	inventory_image = "underch_axe_saphire.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 1,
		groupcaps = {
			choppy = {times = {[1] = 2.10, [2] = 0.90, [3] = 0.50}, uses = 4, maxlevel = 3},
		},
		damage_groups = {fleshy = 56},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1},
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
	output = "underch:pick_emerald",
	recipe = {
		{"underch:emerald", "underch:emerald", "underch:emerald"},
		{"",                "default:stick",   ""               },
		{"",                "default:stick",   ""               },
	}
})

minetest.register_craft({
	output = "underch:shovel_emerald",
	recipe = {
		{"", "underch:emerald", ""},
		{"", "default:stick",   ""},
		{"", "default:stick",   ""},
	}
})

minetest.register_craft({
	output = "underch:axe_emerald",
	recipe = {
		{"underch:emerald", "underch:emerald", ""},
		{"underch:emerald", "default:stick",   ""},
		{"",                "default:stick",   ""},
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
	output = "underch:pick_ruby",
	recipe = {
		{"underch:ruby", "underch:ruby",  "underch:ruby"},
		{"",             "default:stick", ""            },
		{"",             "default:stick", ""            },
	}
})

minetest.register_craft({
	output = "underch:shovel_ruby",
	recipe = {
		{"", "underch:ruby",  ""},
		{"", "default:stick", ""},
		{"", "default:stick", ""},
	}
})

minetest.register_craft({
	output = "underch:axe_ruby",
	recipe = {
		{"underch:ruby", "underch:ruby",  ""},
		{"underch:ruby", "default:stick", ""},
		{"",             "default:stick", ""},
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

minetest.register_craft({
	output = "underch:pick_saphire",
	recipe = {
		{"underch:saphire", "underch:saphire", "underch:saphire"},
		{"",                "default:stick",   ""               },
		{"",                "default:stick",   ""               },
	}
})

minetest.register_craft({
	output = "underch:shovel_saphire",
	recipe = {
		{"", "underch:saphire", ""},
		{"", "default:stick",   ""},
		{"", "default:stick",   ""},
	}
})

minetest.register_craft({
	output = "underch:axe_saphire",
	recipe = {
		{"underch:saphire", "underch:saphire", ""},
		{"underch:saphire", "default:stick",   ""},
		{"",                "default:stick",   ""},
	}
})

-- tt

if underch.have_tt then
	tt.register_snippet(function(itemstring)
		local def = minetest.registered_items[itemstring]
		local prefix = underch.S("Superpower")
		local desc

		if def.name == "underch:sword_emerald" then
			desc = minetest.colorize("#AAFFFF",  prefix .. ": " .. underch.S("Silk Touch"))
		elseif def.name == "underch:pick_emerald" then
			desc = minetest.colorize("#AAFFFF",  prefix .. ": " .. underch.S("Silk Touch"))
		elseif def.name == "underch:shovel_emerald" then
			desc = minetest.colorize("#AAFFFF",  prefix .. ": " .. underch.S("Silk Touch"))
		elseif def.name == "underch:axe_emerald" then
			desc = minetest.colorize("#AAFFFF",  prefix .. ": " .. underch.S("Silk Touch"))
		elseif def.name == "underch:sword_ruby" then
			desc = minetest.colorize("#AAFFFF",  prefix .. ": " .. underch.S("Recycling"))
		elseif def.name == "underch:pick_ruby" then
			desc = minetest.colorize("#AAFFFF",  prefix .. ": " .. underch.S("Recycling"))
		elseif def.name == "underch:shovel_ruby" then
			desc = minetest.colorize("#AAFFFF",  prefix .. ": " .. underch.S("Recycling"))
		elseif def.name == "underch:axe_ruby" then
			desc = minetest.colorize("#AAFFFF",  prefix .. ": " .. underch.S("Recycling"))
		elseif def.name == "underch:sword_saphire" then
			desc = minetest.colorize("#AAFFFF",  prefix .. ": " .. underch.S("Multiplied Drop"))
		elseif def.name == "underch:pick_saphire" then
			desc = minetest.colorize("#AAFFFF",  prefix .. ": " .. underch.S("Multiplied Drop"))
		elseif def.name == "underch:shovel_saphire" then
			desc = minetest.colorize("#AAFFFF",  prefix .. ": " .. underch.S("Multiplied Drop"))
		elseif def.name == "underch:axe_saphire" then
			desc = minetest.colorize("#AAFFFF",  prefix .. ": " .. underch.S("Multiplied Drop"))
		end

		return desc
	end)
end

-- toolranks

if underch.have_toolranks then
	minetest.override_item("underch:sword_emerald", {
		description = toolranks.create_description(underch.S("Emerald Sword"), 0, 0),
		original_description = underch.S("Emerald Sword"),
		after_use = toolranks.new_afteruse
	})

	minetest.override_item("underch:pick_emerald", {
		description = toolranks.create_description(underch.S("Emerald Pickaxe"), 0, 0),
		original_description = underch.S("Emerald Pickaxe"),
		after_use = toolranks.new_afteruse
	})

	minetest.override_item("underch:shovel_emerald", {
		description = toolranks.create_description(underch.S("Emerald Shovel"), 0, 0),
		original_description = underch.S("Emerald Shovel"),
		after_use = toolranks.new_afteruse
	})

	minetest.override_item("underch:axe_emerald", {
		description = toolranks.create_description(underch.S("Emerald Axe"), 0, 0),
		original_description = underch.S("Emerald Axe"),
		after_use = toolranks.new_afteruse
	})

	minetest.override_item("underch:sword_ruby", {
		description = toolranks.create_description(underch.S("Ruby Sword"), 0, 0),
		original_description = underch.S("Ruby Sword"),
		after_use = toolranks.new_afteruse
	})

	minetest.override_item("underch:pick_ruby", {
		description = toolranks.create_description(underch.S("Ruby Pickaxe"), 0, 0),
		original_description = underch.S("Ruby Pickaxe"),
		after_use = toolranks.new_afteruse
	})

	minetest.override_item("underch:shovel_ruby", {
		description = toolranks.create_description(underch.S("Ruby Shovel"), 0, 0),
		original_description = underch.S("Ruby Shovel"),
		after_use = toolranks.new_afteruse
	})

	minetest.override_item("underch:axe_ruby", {
		description = toolranks.create_description(underch.S("Ruby Axe"), 0, 0),
		original_description = underch.S("Ruby Axe"),
		after_use = toolranks.new_afteruse
	})

	minetest.override_item("underch:sword_saphire", {
		description = toolranks.create_description(underch.S("Saphire Sword"), 0, 0),
		original_description = underch.S("Saphire Sword"),
		after_use = toolranks.new_afteruse
	})

	minetest.override_item("underch:pick_saphire", {
		description = toolranks.create_description(underch.S("Saphire Pickaxe"), 0, 0),
		original_description = underch.S("Saphire Pickaxe"),
		after_use = toolranks.new_afteruse
	})

	minetest.override_item("underch:shovel_saphire", {
		description = toolranks.create_description(underch.S("Saphire Shovel"), 0, 0),
		original_description = underch.S("Saphire Shovel"),
		after_use = toolranks.new_afteruse
	})

	minetest.override_item("underch:axe_saphire", {
		description = toolranks.create_description(underch.S("Saphire Axe"), 0, 0),
		original_description = underch.S("Saphire Axe"),
		after_use = toolranks.new_afteruse
	})
end

minetest.register_on_dignode(function(pos, node, player, digger)
	-- TODO: attempt to index local 'player' (a nil value)
	local tool = player:get_wielded_item():get_name()

	if
		tool == "underch:sword_emerald"
		or tool == "underch:pick_emerald"
		or tool == "underch:shovel_emerald"
		or tool == "underch:axe_emerald"
	then
		player:get_inventory():add_item("main", node)

		return nil
	elseif
		tool == "underch:sword_saphire"
		or tool == "underch:pick_saphire"
		or tool == "underch:shovel_saphire"
		or tool == "underch:axe_saphire"
	then
		local drops = minetest.get_node_drops(node.name)

		for _, drop in ipairs(drops) do
			local itemstack = ItemStack(drop .. " " .. math.random(0, 2))
			player:get_inventory():add_item("main", itemstack)
		end

		return nil
	end
end)
