grocery_store = {
	bakery: [
		"hotdog_buns",
		"bagels",
		"sourdough_loaves"
		],
	meat_counter: {
		steaks: 12,
		pork_chops: 9,
		lamb_shanks: 3
		},
	produce_market: {
		potatoes: [
			"red",
			"yukon gold",
			"russet"
			],
		onions: [
			"vidalia",
			"yellow",
			"white"
			],
		lettuce: [
			"romaine",
			"iceberg"
	]
	}
}
p grocery_store[:bakery][2]
p grocery_store[:meat_counter][:steaks]
p grocery_store[:produce_market][:onions][1]