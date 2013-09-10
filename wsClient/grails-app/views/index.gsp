<!DOCTYPE html>
<html>
	<head>
		<title>WS Grails Client</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<script src="${resource(dir: 'js', file: 'socket.io.js')}"></script>
		<script src="${resource(dir: 'js', file: 'jquery.js')}"></script>
		<script src="${resource(dir: 'js', file: 'wsclient.js')}"></script>
	</head>
	<body>
		<h1>WS Grails Client</h1>
		<p id="text">Awaiting messages from commander...</p>
	</body>
</html>
