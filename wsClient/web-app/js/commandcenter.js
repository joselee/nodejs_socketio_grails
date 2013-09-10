var commander = commander || {};

$(document).ready(function(){
	commander.socket = io.connect('http://192.168.1.111:3000');
	commander.socket.on("connect", function () {
		console.log("connected to wsServer");
	
		//commander.socket.on("broadcast", function(data){
		//	console.info(data);
		//});

		$("#btSend").click(function(){
			inputHandler();
		});

		$("#tbInput").keypress(function(e){
			if(e.keyCode === 13){
				inputHandler();
			}
		});

		function inputHandler(){
			var textbox = $("#tbInput");
			var text = textbox.val();

			if(text !== ""){
				var data = {
					time: new Date(),
					text: text
				};
				commander.socket.emit("message", data);
				textbox.val("").focus();
			}
		}
	});
});
