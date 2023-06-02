var http = require('http');
//create a server object:
 
http.createServer(function (req, res) {
    res.write('<h1><center>Hello World!</h1></center>'); //write a response to the client
    res.end(); //end the response
}).listen(9090); //the server object listens on port 9090
 
// Console will print the message
console.log('Server running at 9090');
