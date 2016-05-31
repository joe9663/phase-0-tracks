var colors = ["blue", "red", "green", "yellow"];
var names = ["Ed", "George", "Hank", "Larry"];
colors.push ("purple")
names.push("Max")

var horses = {};
for (var i = 0; i < names.length; i++) {
	horses[names[i]] = colors[i];
} 
console.log(horses)

function Car(color, isHybrid, doors) {
	this.color = color;
	this.isHybrid = isHybrid;
	this.doors = doors;

	this.vroom = function() {console.log("VROOM!!");};
}

var one_car = new Car("blue", true, 2);
console.log(one_car);
console.log("There it goes out of the shop!");
one_car.vroom();

var two_car = new Car("green", false, 4);
console.log(one_car);
console.log("There it goes out of the shop!");
one_car.vroom();

var three_car = new Car("red", false, 2);
console.log(one_car);
console.log("There it goes out of the shop!");
one_car.vroom();