$(document).ready(function(){
	var socket = io.connect('http://192.168.1.111:3000');
	socket.on("connect", function () {
		console.log("connected to wsServer");
	
		socket.on("broadcast", function(data){
			$("#text").html(data.text);
		});
	});
});
