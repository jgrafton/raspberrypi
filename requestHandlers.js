var exec = require("child_process").exec;

function start() {
    console.log("Request handler 'start' was called.");
    var content = "empty";

    exec("ls -lah", function (error, stdout, stderr) { content = stdout; });

    return content;
}

function upload() {
    console.log("Request handler 'upload' was called.");
    return "Hello Upload";
}

function bobthebuilder() {
    console.log("YES WE CAN!");
    return "YES WE CAN!";
}

exports.start = start;
exports.upload = upload;
exports.bobthebuilder = bobthebuilder;
