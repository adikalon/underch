local function redrop(node, drop)
	local item = minetest.registered_items[node]

	if item and item.drop == nil then
		minetest.override_item(node, {drop = drop})
	end
end

redrop("caverealms:glow_emerald", "underch:emerald")
redrop("caverealms:glow_emerald_ore", "underch:emerald")
redrop("caverealms:glow_ruby", "underch:ruby")
redrop("caverealms:glow_ruby_ore", "underch:ruby")
redrop("df_mapitems:glow_ruby_ore", "underch:ruby")
redrop("caverealms:glow_crystal", "underch:saphire")
