$(document).ready(function(){
   	$("#button1").click(function(){
	    $("h1").toggle();
	});
});

$(document).ready(function(){
    $("#second").dblclick(function(){
        $(this).hide();
    });
});

$(document).ready(function(){
    $("h3, #third").click(function(){
        $(this).css("background-color", "red");
    });
});