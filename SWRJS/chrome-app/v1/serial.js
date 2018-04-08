document.addEventListener('DOMContentLoaded', function () {
    var SERIAL_connectionId;
    var SERIAL_stringReceived = '';

    var SERIAL_opts = {
        bitrate: 57600,
        dataBits: 'eight',
        parityBit: 'no',
        stopBits: 'one'
    }


    chrome.serial.getDevices(function (devices) {
        for (var i = 0; i < devices.length; i++) {
            $('#serial_i_list').append('<option value="' + devices[i].path + '">' + devices[i].path + '</option>');
            console.log(devices[i].path);
        }
    });

    $('#serial_i_btn_openclose').click(function () {
        var clicks = $(this).data('clicks');
        if (!clicks) {
            var port = $('select#serial_i_list').val();
            chrome.serial.connect(port, SERIAL_opts, function (info) {
                SERIAL_connectionId = info.connectionId;
                console.log(info);
                $("#serial_i_btn_openclose").html("close Port");
                console.log('Connection opened with id: ' + SERIAL_connectionId + ', Bitrate: ' + info.bitrate);
            });
        } else {
            chrome.serial.disconnect(SERIAL_connectionId, function (result) {
                $("#serial_i_btn_openclose").html("open Port");
                console.log('Connection with id: ' + SERIAL_connectionId + ' closed');
            });
        }

        $(this).data("clicks", !clicks);
    });



    var onReceiveCallback = function (info) {
        if (info.connectionId == SERIAL_connectionId && info.data) {
            var str = convertArrayBufferToString(info.data);
            if (str.charAt(str.length - 1) === '\n') {
                SERIAL_stringReceived += str.substring(0, str.length - 1);
                onLineReceived();
                SERIAL_stringReceived = '';
            } else {
                SERIAL_stringReceived += str;
            }
        }
    };

    chrome.serial.onReceive.addListener(onReceiveCallback);

    function onLineReceived() {
        console.log(SERIAL_stringReceived);

        if ($("#putSerialData_to_DUT_portInput").prop('checked')) {
            $('#DUT_portInput').append(SERIAL_stringReceived);
        }
        if ($("#putSerialData_to_portCorrectionInput").prop('checked')) {
            $('#portCorrectionInput').append(SERIAL_stringReceived);
        }
    }

    var convertStringToArrayBuffer = function (str) {
        var buf = new ArrayBuffer(str.length);
        var bufView = new Uint8Array(buf);
        for (var i = 0; i < str.length; i++) {
            bufView[i] = str.charCodeAt(i);
        }
        return buf;
    }

    function convertArrayBufferToString(buf) {
        var bufView = new Uint8Array(buf);
        var encodedString = String.fromCharCode.apply(null, bufView);
        return decodeURIComponent(encodedString);
    }



});

