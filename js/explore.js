// First we need to create an empty string to add to.
// Then we increment thorugh the string starting with the string length and going down.
// Decrease the value of the count each time and add the letters to the string.
// Return the value of the string at the end.
// Subtract 1 from the string length each time to account for the 0 index.

function reverse(string) {
	var newstring = "";
	for (var i = string.length - 1; i >= 0; i--) {
		newstring += string[i]
	}
	return newstring;
}

var backwards = reverse('hello') ;

if (1 == 1) {
	console.log(backwards) ;
}
else {
	console.log("OOOPS!") ;
}