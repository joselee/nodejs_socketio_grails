var i = 0;

function emit(count){
	var data = { text:count.toString() }
	commander.socket.emit("message", data);
}

function forever(interval){
	setTimeout(function(){
		emit(i);
		i++;
		forever(i);
	}, interval);
}