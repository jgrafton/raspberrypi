function start() {
    function sleep (milliSeconds) {
        var startTime = new Date().getTime();
        while (new Date().getTime() < startTime + milliSeconds);
    }
    sleep(10000);
    console.log("Request handler 'start' was called.");
    return "Hello Start!";
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
