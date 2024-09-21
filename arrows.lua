if underch.have_x_bows then
	XBows:register_arrow("arrow_emerald", {
		description = underch.S("Arrow Emerald"),
		short_description = underch.S("Arrow Emerald"),
		inventory_image = "underch_arrow_emerald.png",
		custom = {
			mod_name = "underch",
			recipe = {
				{"default:flint"},
				{"underch:emerald"},
				{"group:wool"},
			},
			tool_capabilities = {
				full_punch_interval = 0.4,
				max_drop_level = 1,
				damage_groups = {fleshy = 16},
			},
		}
	})

	XBows:register_arrow("arrow_ruby", {
		description = underch.S("Arrow Ruby"),
		short_description = underch.S("Arrow Ruby"),
		inventory_image = "underch_arrow_ruby.png",
		custom = {
			mod_name = "underch",
			recipe = {
				{"default:flint"},
				{"underch:ruby"},
				{"group:wool"},
			},
			tool_capabilities = {
				full_punch_interval = 0.2,
				max_drop_level = 1,
				damage_groups = {fleshy = 32},
			},
		}
	})

	XBows:register_arrow("arrow_saphire", {
		description = underch.S("Arrow Saphire"),
		short_description = underch.S("Arrow Saphire"),
		inventory_image = "underch_arrow_saphire.png",
		custom = {
			mod_name = "underch",
			recipe = {
				{"default:flint"},
				{"underch:saphire"},
				{"group:wool"},
			},
			tool_capabilities = {
				full_punch_interval = 0.1,
				max_drop_level = 1,
				damage_groups = {fleshy = 64},
			},
		}
	})

	XBows:update_bow_allowed_ammunition("bow_wood", {
		"underch:arrow_emerald",
		"underch:arrow_ruby",
		"underch:arrow_saphire",
	})
end
