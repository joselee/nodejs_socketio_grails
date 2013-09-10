<!DOCTYPE html>
<html>
	<head>
		<title>WS Command Center</title>
		<script src="${resource(dir: 'js', file: 'socket.io.js')}"></script>
		<script src="${resource(dir: 'js', file: 'jquery.js')}"></script>
		<script src="${resource(dir: 'js', file: 'commandcenter.js')}"></script>
		<script src="${resource(dir: 'js', file: 'test.js')}"></script>
	</head>
	<body>
		<h1>WS Command Center</h1>

		<input type="text" id="tbInput"></input>
		<button id="btSend">Send message</button>
	</body>
</html>
