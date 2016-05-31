var colors = ["blue", "red", "green", "yellow"];
var names = ["Ed", "George", "Hank", "Larry"];
colors.push ("purple")
names.push("Max")

var horses = {};
for (var i = 0; i < names.length; i++) {
	horses[names[i]] = colors[i];
} 
console.log(horses)
