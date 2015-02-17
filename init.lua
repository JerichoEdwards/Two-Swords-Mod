minetest.register_tool("twoswords:swordoflife", {
	description = "Sword of Life",
	inventory_image = "whitesword.png",
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=80, maxlevel=12},
		},
		damage_groups = {fleshy=8},
	}
})
minetest.register_tool("twoswords:swordofdeath", {
	description = "Sword of Death",
	inventory_image = "redsword.png",
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=80, maxlevel=12},
		},
		damage_groups = {fleshy=8},
	}
})
minetest.register_craftitem("twoswords:stickofpower", {
	description = "The handle of the Two Swords",
	inventory_image = "powerstick.png",
})
minetest.register_craft({
	output = 'twoswords:swordoflife',
	recipe = {
		{'default:diamondblock'},
		{'bucket:bucket_water'},
		{'twoswords:stickofpower'},
	}
})
minetest.register_craft({
	output = 'twoswords;swordofdeath',
	recipe = {
		{'default:diamondblock'},
		{'bucket:bucket_lava'},
		{'twoswords:stickofpower'},
	}
})
minetest.register_craft({
	output = 'twoswords:stickofpower',
	recipe = {
		{'default:diamond'},{'group:stick'},{'default:diamond'}
		{'bucket:bucket_lava'},{'group:stick'},{'bucket:bucket_water'}
		{'default:diamond'},{'group:stick'},{'default:diamond'}
	}
})
