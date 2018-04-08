
var SERIAL_connectionId;
var SERIAL_stringReceived = '';

var SERIAL_opts = {
    bitrate: 57600,
    dataBits: 'eight',
    parityBit: 'no',
    stopBits: 'one'
};

document.addEventListener('DOMContentLoaded', function () {
    SERIAL_init();
    btn_sweep();
});



function SERIAL_init() {
    chrome.serial.getDevices(function (devices) {
        for (var i = 0; i < devices.length; i++) {
            $('#serial_i_list').append('<option value="' + devices[i].path + '">' + devices[i].path + '</option>');
            //console.log(devices[i].path);
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
                //console.log('Connection opened with id: ' + SERIAL_connectionId + ', Bitrate: ' + info.bitrate);
            });
        } else {
            chrome.serial.disconnect(SERIAL_connectionId, function (result) {
                $("#serial_i_btn_openclose").html("open Port");
                //console.log('Connection with id: ' + SERIAL_connectionId + ' closed');
            });
        }

        $(this).data("clicks", !clicks);
    });
}


var SERIAL_callback_onReceive = function (info) {
    if (info.connectionId == SERIAL_connectionId && info.data) {
        var str = convertArrayBufferToString(info.data);
        if (str.charAt(str.length - 1) === '\n') {
            SERIAL_stringReceived += str.substring(0, str.length - 1);
            SERIAL_onDataReceivedReady();
            SERIAL_stringReceived = '';
        } else {
            SERIAL_stringReceived += str;
        }
    }
};

chrome.serial.onReceive.addListener(SERIAL_callback_onReceive);

function SERIAL_onDataReceivedReady() {
    console.log(SERIAL_stringReceived);
    if ($("#putSerialData_to_DUT_portInput").prop('checked')) {
        $('#DUT_portInput').val($('#DUT_portInput').val() + SERIAL_stringReceived);
    }
    if ($("#putSerialData_to_portCorrectionInput").prop('checked')) {
        $('#portCorrectionInput').val($('#portCorrectionInput').val() + SERIAL_stringReceived);
    }
}

function convertStringToArrayBuffer(str) {
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


function btn_sweep() {
    $('#btn_sweep').click(function () {
        if ($("#putSerialData_to_DUT_portInput").prop('checked')) {
            $('#DUT_portInput').val('');
        }
        if ($("#putSerialData_to_portCorrectionInput").prop('checked')) {
            $('#portCorrectionInput').val('');
        }

        freq_from = parseInt($('#freq_from').val()); //MHz
        freq_to = parseInt($('#freq_to').val()); //MHz

        var command = '[' + freq_from + ';' + freq_to + ';]' + "\r\n";
        console.log(command);
        chrome.serial.send(SERIAL_connectionId, convertStringToArrayBuffer(command), SERIAL_callback_onSend);
    });
}

function SERIAL_callback_onSend() {
    console.log('send');
}





