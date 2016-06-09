console.log("The script is running!");

function addGreenBackground(event) {
	event.target.style.background = "green";
}

var onething = document.getElementsByTagName('h1');
var another = onething[0];
another.addEventListener("click", addGreenBackground);