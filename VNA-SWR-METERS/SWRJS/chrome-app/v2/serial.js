
var SERIAL_connectionId;
var SERIAL_stringReceived = '';

var SERIAL_opts = {
    bitrate: 115200,
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
        let i;
        for (i = 0; i < devices.length; i++) {
            $('#serial_i_list').append('<option value="' + devices[i].path + '">' + devices[i].path + '</option>');
            //console.log(devices[i].path);
        }
    });

    $('#serial_i_btn_openclose').click(function () {
        SERIAL_opts.bitrate = parseInt($('select#serial_i_list_bitrate').val());
        const portIsOpen = $(this).data('portIsOpen');
        if (!portIsOpen) {
            let portNum = $('select#serial_i_list').val();
            chrome.serial.connect(portNum, SERIAL_opts, function (info) {
                SERIAL_connectionId = info.connectionId;
                console.log(info);
                $("#serial_i_btn_openclose").html("close port");
                //console.log('Connection opened with id: ' + SERIAL_connectionId + ', Bitrate: ' + info.bitrate);
            });
        } else {
            chrome.serial.disconnect(SERIAL_connectionId, function (result) {
                $("#serial_i_btn_openclose").html("open port");
                //console.log('Connection with id: ' + SERIAL_connectionId + ' closed');
            });
        }
        $(this).data("portIsOpen", !portIsOpen);
        $('#btn_sweep').show();
    });
}


var SERIAL_callback_onReceive = function (info) {
    if (info.connectionId == SERIAL_connectionId && info.data) {
        let str = convertArrayBufferToString(info.data);
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
    if ($("#putSerialData_to_portDUT").prop('checked')) {
        $('#portDUT').val($('#portDUT').val() + SERIAL_stringReceived);
    }
    if ($("#putSerialData_to_portCorrection").prop('checked')) {
        $('#portCorrection').val($('#portCorrection').val() + SERIAL_stringReceived);
    }
    if ($("#putSerialData_to_portReference").prop('checked')) {
        $('#portReference').val($('#portReference').val() + SERIAL_stringReceived);
    }
}

function convertStringToArrayBuffer(str) {
    let buf = new ArrayBuffer(str.length);
    let bufView = new Uint8Array(buf);
    for (let i = 0; i < str.length; i++) {
        bufView[i] = str.charCodeAt(i);
    }
    return buf;
}

function convertArrayBufferToString(buf) {
    let bufView = new Uint8Array(buf);
    let encodedString = String.fromCharCode.apply(null, bufView);
    return decodeURIComponent(encodedString);
}


function btn_sweep() {
    $('#btn_sweep').click(function () {
        $(this).hide();

        if ($("#putSerialData_to_portDUT").prop('checked')) {
            $('#portDUT').val('');
        }
        if ($("#putSerialData_to_portCorrection").prop('checked')) {
            $('#portCorrection').val('');
        }
        if ($("#putSerialData_to_portReference").prop('checked')) {
            $('#portReference').val('');
        }

        freq_from = parseInt($('#freq_from').val()); //MHz
        freq_to = parseInt($('#freq_to').val()); //MHz

        let command = '[' + freq_from + ';' + freq_to + ';]' + "\r\n";
        console.log(command);
        chrome.serial.send(SERIAL_connectionId, convertStringToArrayBuffer(command), SERIAL_callback_onSend);
    });
}

function SERIAL_callback_onSend() {
    console.log('send');
    $('#btn_sweep').show();
}





