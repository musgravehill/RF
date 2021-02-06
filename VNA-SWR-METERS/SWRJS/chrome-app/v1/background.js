function SERIAL_disconnectAll() {
    chrome.serial.getConnections(function (connections) {
        connections.forEach(function (c) {
            chrome.serial.disconnect(c.connectionId, function () {});
        });
    });
}

chrome.app.runtime.onLaunched.addListener(function () {
    chrome.app.window.create('window.html', {
        'outerBounds': {
            'width': 800,
            'height': 500
        }
    }, function (window) {
        window.onClosed.addListener(SERIAL_disconnectAll);
    });
});

