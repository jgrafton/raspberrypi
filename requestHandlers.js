var exec = require("child_process").exec;

function start(response) {
    console.log("Request handler 'start' was called.");
    var content = "empty";

    exec("ls -lah", function (error, stdout, stderr) { 
      response.writeHead(200, { "Content-type": "text/plain"});
      response.write(stdout);
      response.end();      
    });
}

function upload(response) {
    console.log("Request handler 'upload' was called.");
    response.writeHead(200, {"Content-type": "text/plain"});
    response.write("Hello Upload");
    response.end();
}

function bobthebuilder(response) {
    console.log("YES WE CAN!");
    response.writeHead(200, {"Content-type": "text/plain"});
    response.write("YES WE CAN!");
    response.end();
}

exports.start = start;
exports.upload = upload;
exports.bobthebuilder = bobthebuilder;
