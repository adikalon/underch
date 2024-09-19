local COOLDOWN = dofile(underch.modpath .. "/cooldowns.lua")

local function tool_fire_func(itemstack, user, pointed)
	local name = user:get_player_name()

	if pointed.type == "node" then
		local node = minetest.get_node(pointed.under)
		local def = minetest.registered_nodes[node.name]

		if def.on_rightclick then
			return def.on_rightclick(pointed.under, node, user, itemstack, pointed)
		end

		if minetest.is_protected(pointed.under, name) then return end

		-- Only allow fire every 1+ second(s)
		if not COOLDOWN:get(user) then
			activate_func(user, node.name, def, pointed)
			COOLDOWN:set(user, 1)
		end
	end
end

-- tools

minetest.register_tool("underch:sword_emerald", {
	description = underch.S("Emerald Sword"),
	inventory_image = "underch_sword_emerald.png",
	groups = {weapon = 1, sword = 1},
	light_source = 7,
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level = 1,
		groupcaps = {
			snappy = {
				times = {1.7, 0.7, 0.25},
				uses = 50,
				maxlevel = 3
			},
		},
		damage_groups = {fleshy = 10, burns = 1},
	},
	on_place = tool_fire_func,
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("underch:pick_emerald", {
	description = underch.S("Emerald Pickaxe"),
	inventory_image = "underch_pick_emerald.png",
	groups = {tool = 1, pickaxe = 1},
	light_source = 7,
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level = 3,
		groupcaps={
			cracky = {
				times = {1.8, 0.8, 0.40},
				uses = 40,
				maxlevel = 3
			},
		},
		damage_groups = {fleshy = 6, burns = 1},
	},
	on_place = tool_fire_func,
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("underch:shovel_emerald", {
	description = underch.S("Emerald Shovel"),
	inventory_image = "underch_shovel_emerald.png",
	wield_image = "underch_shovel_emerald.png^[transformR90",
	groups = {tool = 1, shovel = 1},
	light_source = 7,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {
				times = {[1]=1.10, [2]=0.50, [3]=0.30},
				uses = 30,
				maxlevel = 3
			},
		},
		damage_groups = {fleshy=4},
	},
	on_place = tool_fire_func,
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("underch:axe_emerald", {
	description = underch.S("Emerald Axe"),
	inventory_image = "underch_axe_emerald.png",
	groups = {tool = 1, axe = 1},
	light_source = 7,
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level = 1,
		groupcaps = {
			choppy = {
				times = {2.00, 0.80, 0.40},
				uses = 40,
				maxlevel = 3
			},
		},
		damage_groups = {fleshy = 7, burns = 1},
	},
	on_place = tool_fire_func,
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("underch:sword_ruby", {
	description = underch.S("Ruby Sword"),
	inventory_image = "underch_sword_ruby.png",
	groups = {weapon = 1, sword = 1},
	light_source = 7,
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level = 1,
		groupcaps = {
			snappy = {
				times = {1.7, 0.7, 0.25},
				uses = 50,
				maxlevel = 3
			},
		},
		damage_groups = {fleshy = 10, burns = 1},
	},
	on_place = tool_fire_func,
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("underch:pick_ruby", {
	description = underch.S("Ruby Pickaxe"),
	inventory_image = "underch_pick_ruby.png",
	groups = {tool = 1, pickaxe = 1},
	light_source = 7,
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level = 3,
		groupcaps={
			cracky = {
				times = {1.8, 0.8, 0.40},
				uses = 40,
				maxlevel = 3
			},
		},
		damage_groups = {fleshy = 6, burns = 1},
	},
	on_place = tool_fire_func,
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("underch:shovel_ruby", {
	description = underch.S("Ruby Shovel"),
	inventory_image = "underch_shovel_ruby.png",
	wield_image = "underch_shovel_ruby.png^[transformR90",
	groups = {tool = 1, shovel = 1},
	light_source = 7,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {
				times = {[1]=1.10, [2]=0.50, [3]=0.30},
				uses = 30,
				maxlevel = 3
			},
		},
		damage_groups = {fleshy=4},
	},
	on_place = tool_fire_func,
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("underch:axe_ruby", {
	description = underch.S("Ruby Axe"),
	inventory_image = "underch_axe_ruby.png",
	groups = {tool = 1, axe = 1},
	light_source = 7,
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level = 1,
		groupcaps = {
			choppy = {
				times = {2.00, 0.80, 0.40},
				uses = 40,
				maxlevel = 3
			},
		},
		damage_groups = {fleshy = 7, burns = 1},
	},
	on_place = tool_fire_func,
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("underch:sword_saphire", {
	description = underch.S("Saphire Sword"),
	inventory_image = "underch_sword_saphire.png",
	groups = {weapon = 1, sword = 1},
	light_source = 7,
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level = 1,
		groupcaps = {
			snappy = {
				times = {1.7, 0.7, 0.25},
				uses = 50,
				maxlevel = 3
			},
		},
		damage_groups = {fleshy = 10, burns = 1},
	},
	on_place = tool_fire_func,
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("underch:pick_saphire", {
	description = underch.S("Saphire Pickaxe"),
	inventory_image = "underch_pick_saphire.png",
	groups = {tool = 1, pickaxe = 1},
	light_source = 7,
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level = 3,
		groupcaps={
			cracky = {
				times = {1.8, 0.8, 0.40},
				uses = 40,
				maxlevel = 3
			},
		},
		damage_groups = {fleshy = 6, burns = 1},
	},
	on_place = tool_fire_func,
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("underch:shovel_saphire", {
	description = underch.S("Saphire Shovel"),
	inventory_image = "underch_shovel_saphire.png",
	wield_image = "underch_shovel_saphire.png^[transformR90",
	groups = {tool = 1, shovel = 1},
	light_source = 7,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {
				times = {[1]=1.10, [2]=0.50, [3]=0.30},
				uses = 30,
				maxlevel = 3
			},
		},
		damage_groups = {fleshy=4},
	},
	on_place = tool_fire_func,
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("underch:axe_saphire", {
	description = underch.S("Saphire Axe"),
	inventory_image = "underch_axe_saphire.png",
	groups = {tool = 1, axe = 1},
	light_source = 7,
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level = 1,
		groupcaps = {
			choppy = {
				times = {2.00, 0.80, 0.40},
				uses = 40,
				maxlevel = 3
			},
		},
		damage_groups = {fleshy = 7, burns = 1},
	},
	on_place = tool_fire_func,
	sound = {breaks = "default_tool_breaks"},
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
