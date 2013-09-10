nodejs_socketio_grails
======================

Simple test application which implements a Node.js WebSocket server using Socket.IO. The client-side application is done with Grails. This was a test to find an alternative for the Atmosphere plugin native to Grails, which feels sluggish to me.

Basically, this was created to see if a Grails application can connect to a Node.js WebSocket server, and it can!

## Prerequisites to run:
1. Node.js (v0.10.18)
2. NPM (v1.3.8)
3. Grails (v2.2.3)

The version numbers just show what version I was using when I created the project.


## How to run the project (all commands are done in the terminal!):
1. Navigate to the 'wsServer' directory and install Socket.io by running 'npm install socket.io'
2. In the same directory, start the Node.js server by running 'node server.js'
3. Navigate to the 'wsClient' directory and run the command 'grails run-app'

## Things you will need to change:
IP addresses in the client-side JavaScript files will need to be changed. Specifically in the files:
  
     /wsClient/web-app-js/commandcenter.js
  
     /wsClient/web-app-js/wsclient.js

## To see the app running:
- Go to your web browser and go to http://localhost:8080. You will see the client application here.
- Open another tab/window (or another browser) and go to http://localhost:8080/commandcenter. You'll see an input field there. Type something and press enter or press the send button, and your clients will be affected by the change.
- Lastly, you can do a performance test by running the function forever() in your web console (chrome developer tools or firebug, or what have you)

running the following command will cause the commandcenter to send a message to the WebSocket server every 25 milliseconds forever. All clients will also receive those messages.

    forever(25);
