minetest.override_item("farming:bread", {
	description = "Wheat Bread",
})

minetest.override_item("farming:flour", {
	description = "Wheat Flour",
})

-- RYE

farming.register_plant("grains:rye", {
	description = "Rye seed",
	paramtype2 = "meshoptions",
	inventory_image = "farming_rye_seed.png",
	steps = 8,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland"},
	groups = {flammable = 4},
	place_param2 = 3,
})

minetest.register_craftitem("grains:rye_bread", {
	description = "Rye Bread",
	inventory_image = "farming_rye_bread.png",
	on_use = minetest.item_eat(5),
	groups = {flammable = 2},
})

minetest.register_craftitem("grains:rye_flour", {
	description = "Rye Flour",
	inventory_image = "farming_rye_flour.png",
	groups = {flammable = 1},
})

-- OAT

farming.register_plant("grains:oat", {
	description = "Oat seed",
	paramtype2 = "meshoptions",
	inventory_image = "farming_oat_seed.png",
	steps = 8,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland"},
	groups = {flammable = 4},
	place_param2 = 3,
})

minetest.register_craftitem("grains:oat_bread", {
	description = "Oatbread",
	inventory_image = "farming_oat_bread.png",
	on_use = minetest.item_eat(5),
	groups = {flammable = 2},
})

minetest.register_craftitem("grains:oat_flour", {
	description = "Oat Flour",
	inventory_image = "farming_oat_flour.png",
	groups = {flammable = 1},
})

-- BARLEY

farming.register_plant("grains:barley", {
	description = "Barley seed",
	paramtype2 = "meshoptions",
	inventory_image = "farming_barley_seed.png",
	steps = 8,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland"},
	groups = {flammable = 4},
	place_param2 = 3,
})

minetest.register_craftitem("grains:barley_bread", {
	description = "Barley Bread",
	inventory_image = "farming_barley_bread.png",
	on_use = minetest.item_eat(5),
	groups = {flammable = 2},
})

minetest.register_craftitem("grains:barley_flour", {
	description = "Barley Flour",
	inventory_image = "farming_barley_flour.png",
	groups = {flammable = 1},
})

-- Cooking

minetest.register_craft({
	type = "shapeless",
	output = "grains:rye_flour",
	recipe = {"grains:rye", "grains:rye", "grains:rye", "grains:rye"}
})

minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "grains:rye_bread",
	recipe = "grains:rye_flour"
})

minetest.register_craft({
	type = "shapeless",
	output = "grains:oat_flour",
	recipe = {"grains:oat", "grains:oat", "grains:oat", "grains:oat"}
})

minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "grains:oat_bread",
	recipe = "grains:oat_flour"
})

minetest.register_craft({
	type = "shapeless",
	output = "grains:barley_flour",
	recipe = {"grains:barley", "grains:barley", "grains:barley", "grains:barley"}
})

minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "grains:barley_bread",
	recipe = "grains:barley_flour"
})

-- Fuels
minetest.register_craft({
	type = "fuel",
	recipe = "farming:bread",
	burntime = 1,
})

minetest.register_craft({
	type = "fuel",
	recipe = "grains:rye_bread",
	burntime = 1,
})

minetest.register_craft({
	type = "fuel",
	recipe = "grains:oat_bread",
	burntime = 1,
})

minetest.register_craft({
	type = "fuel",
	recipe = "grains:barley_bread",
	burntime = 1,
})

minetest.register_craft({
	type = "fuel",
	recipe = "farming:wheat",
	burntime = 1,
})

minetest.register_craft({
	type = "fuel",
	recipe = "grains:rye",
	burntime = 1,
})

minetest.register_craft({
	type = "fuel",
	recipe = "grains:oat",
	burntime = 1,
})

minetest.register_craft({
	type = "fuel",
	recipe = "grains:barley",
	burntime = 1,
})

-- Seed gathering

for i = 1, 5 do
	minetest.override_item("default:grass_"..i, {drop = {
		max_items = 1,
		items = {
			{items = {'farming:seed_wheat'},rarity = 10},
			{items = {'grains:seed_barley'},rarity = 20},
			{items = {'default:grass_1'}},
		}
	}})
end

for i = 1, 5 do
	minetest.override_item("default:dry_grass_"..i, {drop = {
		max_items = 1,
		items = {
			{items = {'grains:seed_rye'},rarity = 10},
			{items = {'grains:seed_oat'},rarity = 20},
			{items = {'default:dry_grass_1'}},
		}
	}})
end