if underch.have_tt then
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
				full_punch_interval = 0.3,
				max_drop_level = 1,
				damage_groups = {fleshy = 30},
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
				full_punch_interval = 0.3,
				max_drop_level = 1,
				damage_groups = {fleshy = 30},
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
				full_punch_interval = 0.3,
				max_drop_level = 1,
				damage_groups = {fleshy = 30},
			},
		}
	})

	XBows:update_bow_allowed_ammunition("bow_wood", {
		"underch:arrow_emerald",
		"underch:arrow_ruby",
		"underch:arrow_saphire",
	})
end

if underch.have_tt then
	tt.register_snippet(function(itemstring)
		local def = minetest.registered_items[itemstring]
		local prefix = underch.S("Superpower")
		local desc

		if def.name == "underch:arrow_emerald" then
			desc = minetest.colorize("#00BFFF",  prefix .. ": " .. "-")
		elseif def.name == "underch:arrow_ruby" then
			desc = minetest.colorize("#00BFFF",  prefix .. ": " .. "-")
		elseif def.name == "underch:arrow_saphire" then
			desc = minetest.colorize("#00BFFF",  prefix .. ": " .. "-")
		end

		return desc
	end)
end
