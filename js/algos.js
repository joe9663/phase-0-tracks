// Make the array and iterate the length function on each string in the array.
// Then the length of each string needs to be compared to others.
// Using comparators && for both to be true will print the one that is the longest.
// The longest string is then printed to the console.


var phrases = ["long phrase", "longest phrase", "longer phrase"];

if (phrases[0].length > phrases[1].length && phrases[0].length > phrases[2].length) {
	console.log(phrases[0]);
}
else if (phrases[1].length > phrases[0].length && phrases[1].length > phrases[2].length) {
	console.log(phrases[1]);
}
else if (phrases[2].length > phrases[0].length && phrases[2].length > phrases[1].length) {
	console.log(phrases[2]);
}

// Make a function that takes two objects as parameters.
// 