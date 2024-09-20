if underch.have_3d_armor then
	armor:register_armor("underch:helmet_emerald", {
		description = underch.S("Emerald Helmet"),
		inventory_image = "underch_inv_helmet_emerald.png",
		groups = {armor_head = 1, armor_heal = 0, armor_use = 800,
		physics_speed = -0.01, physics_gravity = 0.01},
		armor_groups = {fleshy = 10},
		damage_groups = {cracky = 2, snappy = 3, choppy = 2, crumbly = 1, level = 2},
		texture = "underch_helmet_emerald.png",
		preview = "underch_helmet_emerald_preview.png",
	})

	armor:register_armor("underch:chestplate_emerald", {
		description = underch.S("Emerald Chestplate"),
		inventory_image = "underch_inv_chestplate_emerald.png",
		groups = {armor_torso = 1, armor_heal = 0, armor_use = 800,
		physics_speed = -0.04, physics_gravity = 0.04},
		armor_groups = {fleshy = 15},
		damage_groups = {cracky = 2, snappy = 3, choppy = 2, crumbly = 1, level = 2},
		texture = "underch_chestplate_emerald.png",
		preview = "underch_chestplate_emerald_preview.png",
	})

	armor:register_armor("underch:leggings_emerald", {
		description = underch.S("Emerald Leggings"),
		inventory_image = "underch_inv_leggings_emerald.png",
		groups = {armor_legs = 1, armor_heal = 0, armor_use = 800,
		physics_speed = -0.03, physics_gravity = 0.03},
		armor_groups = {fleshy = 15},
		damage_groups = {cracky = 2, snappy = 3, choppy = 2, crumbly = 1, level = 2},
		texture = "underch_leggings_emerald.png",
		preview = "underch_leggings_emerald_preview.png",
	})

	armor:register_armor("underch:boots_emerald", {
		description = underch.S("Emerald Boots"),
		inventory_image = "underch_inv_boots_emerald.png",
		groups = {armor_feet = 1, armor_heal = 0, armor_use = 800,
		physics_speed = -0.01, physics_gravity = 0.01},
		armor_groups = {fleshy = 10},
		damage_groups = {cracky = 2, snappy = 3, choppy = 2, crumbly = 1, level = 2},
		texture = "underch_boots_emerald.png",
		preview = "underch_boots_emerald_preview.png",
	})

	minetest.register_craft({
		output = "underch:helmet_emerald",
		recipe = {
			{"underch:emerald", "underch:emerald", "underch:emerald"},
			{"underch:emerald", "",                "underch:emerald"},
			{"",                "",                ""},
		},
	})

	minetest.register_craft({
		output = "underch:chestplate_emerald",
		recipe = {
			{"underch:emerald", "",                "underch:emerald"},
			{"underch:emerald", "underch:emerald", "underch:emerald"},
			{"underch:emerald", "underch:emerald", "underch:emerald"},
		},
	})

	minetest.register_craft({
		output = "underch:leggings_emerald",
		recipe = {
			{"underch:emerald", "underch:emerald", "underch:emerald"},
			{"underch:emerald", "",                "underch:emerald"},
			{"underch:emerald", "",                "underch:emerald"},
		},
	})

	minetest.register_craft({
		output = "underch:boots_emerald",
		recipe = {
			{"underch:emerald", "", "underch:emerald"},
			{"underch:emerald", "", "underch:emerald"},
		},
	})

	armor:register_armor("underch:helmet_ruby", {
		description = underch.S("Ruby Helmet"),
		inventory_image = "underch_inv_helmet_ruby.png",
		groups = {armor_head = 1, armor_heal = 0, armor_use = 800,
		physics_speed = -0.01, physics_gravity = 0.01},
		armor_groups = {fleshy = 10},
		damage_groups = {cracky = 2, snappy = 3, choppy = 2, crumbly = 1, level = 2},
		texture = "underch_helmet_ruby.png",
		preview = "underch_helmet_ruby_preview.png",
	})

	armor:register_armor("underch:chestplate_ruby", {
		description = underch.S("Ruby Chestplate"),
		inventory_image = "underch_inv_chestplate_ruby.png",
		groups = {armor_torso = 1, armor_heal = 0, armor_use = 800,
		physics_speed = -0.04, physics_gravity = 0.04},
		armor_groups = {fleshy = 15},
		damage_groups = {cracky = 2, snappy = 3, choppy = 2, crumbly = 1, level = 2},
		texture = "underch_chestplate_ruby.png",
		preview = "underch_chestplate_ruby_preview.png",
	})

	armor:register_armor("underch:leggings_ruby", {
		description = underch.S("Ruby Leggings"),
		inventory_image = "underch_inv_leggings_ruby.png",
		groups = {armor_legs = 1, armor_heal = 0, armor_use = 800,
		physics_speed = -0.03, physics_gravity = 0.03},
		armor_groups = {fleshy = 15},
		damage_groups = {cracky = 2, snappy = 3, choppy = 2, crumbly = 1, level = 2},
		texture = "underch_leggings_ruby.png",
		preview = "underch_leggings_ruby_preview.png",
	})

	armor:register_armor("underch:boots_ruby", {
		description = underch.S("Ruby Boots"),
		inventory_image = "underch_inv_boots_ruby.png",
		groups = {armor_feet = 1, armor_heal = 0, armor_use = 800,
		physics_speed = -0.01, physics_gravity = 0.01},
		armor_groups = {fleshy = 10},
		damage_groups = {cracky = 2, snappy = 3, choppy = 2, crumbly = 1, level = 2},
		texture = "underch_boots_ruby.png",
		preview = "underch_boots_ruby_preview.png",
	})

	minetest.register_craft({
		output = "underch:helmet_ruby",
		recipe = {
			{"underch:ruby", "underch:ruby", "underch:ruby"},
			{"underch:ruby", "",             "underch:ruby"},
			{"",             "",             ""},
		},
	})

	minetest.register_craft({
		output = "underch:chestplate_ruby",
		recipe = {
			{"underch:ruby", "",             "underch:ruby"},
			{"underch:ruby", "underch:ruby", "underch:ruby"},
			{"underch:ruby", "underch:ruby", "underch:ruby"},
		},
	})

	minetest.register_craft({
		output = "underch:leggings_ruby",
		recipe = {
			{"underch:ruby", "underch:ruby", "underch:ruby"},
			{"underch:ruby", "",             "underch:ruby"},
			{"underch:ruby", "",             "underch:ruby"},
		},
	})

	minetest.register_craft({
		output = "underch:boots_ruby",
		recipe = {
			{"underch:ruby", "", "underch:ruby"},
			{"underch:ruby", "", "underch:ruby"},
		},
	})

	armor:register_armor("underch:helmet_saphire", {
		description = underch.S("Saphire Helmet"),
		inventory_image = "underch_inv_helmet_saphire.png",
		groups = {armor_head = 1, armor_heal = 0, armor_use = 800,
		physics_speed = -0.01, physics_gravity = 0.01},
		armor_groups = {fleshy = 10},
		damage_groups = {cracky = 2, snappy = 3, choppy = 2, crumbly = 1, level = 2},
		texture = "underch_helmet_saphire.png",
		preview = "underch_helmet_saphire_preview.png",
	})

	armor:register_armor("underch:chestplate_saphire", {
		description = underch.S("Saphire Chestplate"),
		inventory_image = "underch_inv_chestplate_saphire.png",
		groups = {armor_torso = 1, armor_heal = 0, armor_use = 800,
		physics_speed = -0.04, physics_gravity = 0.04},
		armor_groups = {fleshy = 15},
		damage_groups = {cracky = 2, snappy = 3, choppy = 2, crumbly = 1, level = 2},
		texture = "underch_chestplate_saphire.png",
		preview = "underch_chestplate_saphire_preview.png",
	})

	armor:register_armor("underch:leggings_saphire", {
		description = underch.S("Saphire Leggings"),
		inventory_image = "underch_inv_leggings_saphire.png",
		groups = {armor_legs = 1, armor_heal = 0, armor_use = 800,
		physics_speed = -0.03, physics_gravity = 0.03},
		armor_groups = {fleshy = 15},
		damage_groups = {cracky = 2, snappy = 3, choppy = 2, crumbly = 1, level = 2},
		texture = "underch_leggings_saphire.png",
		preview = "underch_leggings_saphire_preview.png",
	})

	armor:register_armor("underch:boots_saphire", {
		description = underch.S("Saphire Boots"),
		inventory_image = "underch_inv_boots_saphire.png",
		groups = {armor_feet = 1, armor_heal = 0, armor_use = 800,
		physics_speed = -0.01, physics_gravity = 0.01},
		armor_groups = {fleshy = 10},
		damage_groups = {cracky = 2, snappy = 3, choppy = 2, crumbly = 1, level = 2},
		texture = "underch_boots_saphire.png",
		preview = "underch_boots_saphire_preview.png",
	})

	minetest.register_craft({
		output = "underch:helmet_saphire",
		recipe = {
			{"underch:saphire", "underch:saphire", "underch:saphire"},
			{"underch:saphire", "",                "underch:saphire"},
			{"",                "",                ""},
		},
	})

	minetest.register_craft({
		output = "underch:chestplate_saphire",
		recipe = {
			{"underch:saphire", "",                "underch:saphire"},
			{"underch:saphire", "underch:saphire", "underch:saphire"},
			{"underch:saphire", "underch:saphire", "underch:saphire"},
		},
	})

	minetest.register_craft({
		output = "underch:leggings_saphire",
		recipe = {
			{"underch:saphire", "underch:saphire", "underch:saphire"},
			{"underch:saphire", "",                "underch:saphire"},
			{"underch:saphire", "",                "underch:saphire"},
		},
	})

	minetest.register_craft({
		output = "underch:boots_saphire",
		recipe = {
			{"underch:saphire", "", "underch:saphire"},
			{"underch:saphire", "", "underch:saphire"},
		},
	})
end

if underch.have_shields then
	armor:register_armor("underch:shield_emerald", {
		description = underch.S("Emerald Shield"),
		inventory_image = "underch_inv_shield_emerald.png",
		groups = {armor_shield=1, armor_heal=0, armor_use=800,
		physics_speed=-0.03, physics_gravity=0.03},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
		reciprocate_damage = true,
		on_damage = function(player, index, stack)
			play_sound_effect(player, "default_glass_footstep")
		end,
		on_destroy = function(player, index, stack)
			play_sound_effect(player, "default_break_glass")
		end,
	})

	minetest.register_craft({
		output = "shields:shield_emerald",
		recipe = {
			{"underch:emerald", "underch:emerald", "underch:emerald"},
			{"underch:emerald", "underch:emerald", "underch:emerald"},
			{"",                "underch:emerald", ""               },
		},
	})

	armor:register_armor("underch:shield_ruby", {
		description = underch.S("Ruby Shield"),
		inventory_image = "underch_inv_shield_ruby.png",
		groups = {armor_shield=1, armor_heal=0, armor_use=800,
		physics_speed=-0.03, physics_gravity=0.03},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
		reciprocate_damage = true,
		on_damage = function(player, index, stack)
			play_sound_effect(player, "default_glass_footstep")
		end,
		on_destroy = function(player, index, stack)
			play_sound_effect(player, "default_break_glass")
		end,
	})

	minetest.register_craft({
		output = "shields:shield_ruby",
		recipe = {
			{"underch:ruby", "underch:ruby", "underch:ruby"},
			{"underch:ruby", "underch:ruby", "underch:ruby"},
			{"",             "underch:ruby", ""               },
		},
	})

	armor:register_armor("underch:shield_saphire", {
		description = underch.S("Saphire Shield"),
		inventory_image = "underch_inv_shield_saphire.png",
		groups = {armor_shield=1, armor_heal=0, armor_use=800,
		physics_speed=-0.03, physics_gravity=0.03},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
		reciprocate_damage = true,
		on_damage = function(player, index, stack)
			play_sound_effect(player, "default_glass_footstep")
		end,
		on_destroy = function(player, index, stack)
			play_sound_effect(player, "default_break_glass")
		end,
	})

	minetest.register_craft({
		output = "shields:shield_saphire",
		recipe = {
			{"underch:saphire", "underch:saphire", "underch:saphire"},
			{"underch:saphire", "underch:saphire", "underch:saphire"},
			{"",                "underch:saphire", ""               },
		},
	})
end
