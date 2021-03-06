
var SERIAL_connectionId;
var SERIAL_stringReceived = '';

document.addEventListener('DOMContentLoaded', function () {
    SERIAL_init();
    btn_sweep();
});

function SERIAL_init() {
    let SERIAL_opts = {
        bitrate: 115200,
        dataBits: 'eight',
        parityBit: 'no',
        stopBits: 'one'
    };

    chrome.serial.getDevices(function (devices) {
        let i;
        for (i = 0; i < devices.length; i++) {
            $('#serial_i_list').append('<option value="' + devices[i].path + '">' + devices[i].path + '</option>');
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
            });
        } else {
            chrome.serial.disconnect(SERIAL_connectionId, function (result) {
                $("#serial_i_btn_openclose").html("open port");
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
    if ($("#putDataDUT_1").prop('checked')) {
        $('#dataDUT_1').val($('#dataDUT_1').val() + SERIAL_stringReceived);
    }
    if ($("#putDataDUT_2").prop('checked')) {
        $('#dataDUT_2').val($('#dataDUT_2').val() + SERIAL_stringReceived);
    }
    if ($("#putDataDUT_3").prop('checked')) {
        $('#dataDUT_3').val($('#dataDUT_3').val() + SERIAL_stringReceived);
    }
    if ($("#putDataDUT_4").prop('checked')) {
        $('#dataDUT_4').val($('#dataDUT_4').val() + SERIAL_stringReceived);
    }
    if ($("#putDataDUT_5").prop('checked')) {
        $('#dataDUT_5').val($('#dataDUT_5').val() + SERIAL_stringReceived);
    }
    if ($("#putDataDUT_6").prop('checked')) {
        $('#dataDUT_6').val($('#dataDUT_6').val() + SERIAL_stringReceived);
    }

    if ($("#putDataCorrection").prop('checked')) {
        $('#dataCorrection').val($('#dataCorrection').val() + SERIAL_stringReceived);
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

        if ($("#putDataDUT_1").prop('checked')) {
            $('#dataDUT_1').val('');
        }
        if ($("#putDataDUT_2").prop('checked')) {
            $('#dataDUT_2').val('');
        }
        if ($("#putDataDUT_3").prop('checked')) {
            $('#dataDUT_3').val('');
        }
        if ($("#putDataDUT_4").prop('checked')) {
            $('#dataDUT_4').val('');
        }
        if ($("#putDataDUT_5").prop('checked')) {
            $('#dataDUT_5').val('');
        }
        if ($("#putDataDUT_6").prop('checked')) {
            $('#dataDUT_6').val('');
        }

        if ($("#putDataCorrection").prop('checked')) {
            $('#dataCorrection').val('');
        }

        freq_from = parseInt($('#freq_from').val()) || 0; //MHz
        freq_to = parseInt($('#freq_to').val()) || 0; //MHz

        let command = '[' + freq_from + ';' + freq_to + ';]' + "\r\n";
        chrome.serial.send(SERIAL_connectionId, convertStringToArrayBuffer(command), SERIAL_callback_onSend);
    });
}

function SERIAL_callback_onSend() {
    $('#btn_sweep').show();
}





