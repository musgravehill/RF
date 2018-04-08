var portCorrection_values = []; //input values from device
var portCorrection_correction_coef = []; //coefficient for corrction

var openPort_values = []; //input values from device
var openPort_correction_coef = []; //coefficient for corrction

var DUT_port_values = []; //input values from device

var freq_from = 0; //MHz
var freq_to = 0; //MHz
var isUsePortCorrection = false;
var chart_DUT = false;
var chart_correction = false;
document.addEventListener('DOMContentLoaded', function () {
    btn_draw();
    btn_sweep();
});

function btn_sweep() {
    $('#btn_draw').click(function () {
        freq_from = parseInt($('#freq_from').val()); //MHz
        freq_to = parseInt($('#freq_to').val()); //MHz

        if ($("#putSerialData_to_DUT_portInput").prop('checked')) {
            $('#DUT_portInput').val('');
        }
        if ($("#putSerialData_to_portCorrectionInput").prop('checked')) {
            $('#portCorrectionInput').val('');
        }

        

    });
}

function btn_draw() {
    $('#btn_draw').click(function () {
        freq_from = parseInt($('#freq_from').val()); //MHz
        freq_to = parseInt($('#freq_to').val()); //MHz
        isUsePortCorrection = $("#isUsePortCorrection").prop('checked');
        portCorrection_fill();
        portCorrection_calc_correction_coef();
        DUT_port_fill();
        chart_DUT_draw();
        chart_correction_draw();
    });
}

function DUT_port_fill() {
    var res = $('#DUT_portInput').val();
    var ar = res.split('\n');
    var tmp, freq, volt;
    $(ar).each(function (i, item) {
        tmp = item.split(';');
        freq = parseInt(tmp[0]);
        volt = parseInt(tmp[2]);
        if (freq > 0 && volt >= 0) {
            //console.log('f=' + freq + ' v=' + volt);
            DUT_port_values[freq] = volt;
        }
    });
}

function portCorrection_fill() {
    var res = $('#portCorrectionInput').val();
    var ar = res.split('\n');
    var tmp, freq, volt;
    $(ar).each(function (i, item) {
        tmp = item.split(';');
        freq = parseInt(tmp[0]);
        volt = parseInt(tmp[2]);
        if (freq > 0 && volt >= 0) {
            //console.log('f=' + freq + ' v=' + volt);
            portCorrection_values[freq] = volt;
        }
    });
}
function portCorrection_calc_correction_coef() {
    var i;
    var portCorrection_values_freqsRange = [];
    for (i = freq_from; i <= freq_to; i++) {
        if (portCorrection_values[i]) {
            portCorrection_values_freqsRange.push(portCorrection_values[i]);
        }
    }
    var portCorrection_values_freqsRange_max = Math.max.apply(null, portCorrection_values_freqsRange);
    for (i = freq_from; i <= freq_to; i++) {
        if (portCorrection_values[i]) {
            portCorrection_correction_coef[i] = portCorrection_values_freqsRange_max / portCorrection_values[i];
        }
    }
}

function chart_DUT_draw() {
    var i;
    var dataLabels = [];
    var dataY_DUT_port_values = [];
    for (i = freq_from; i <= freq_to; i++) {
        if (DUT_port_values[i]) {
            dataLabels.push(i);
            if (isUsePortCorrection && portCorrection_correction_coef[i]) {
                dataY_DUT_port_values.push(Math.round(DUT_port_values[i] * portCorrection_correction_coef[i]));
            } else {
                dataY_DUT_port_values.push(DUT_port_values[i]);
            }
        }
    }

    if (chart_DUT) {
        chart_DUT.destroy();
        //alert('destroy');
    }

    var ctx = document.getElementById('chart_DUT').getContext('2d');
    chart_DUT = new Chart(ctx, {
        type: 'line',
        data: {
            labels: dataLabels,
            datasets: [
                {
                    label: 'DUT_port',
                    fill: false,
                    backgroundColor: '#ff2600',
                    borderWidth: 3,
                    borderColor: '#ff2600',
                    pointStyle: 'circle',
                    radius: 1,
                    data: dataY_DUT_port_values
                }
            ]
        },
        options: {
            scales: {
                yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
            },

            /*elements: {
             line: {
             tension: 0, // disables bezier curves
             }
             },*/
            animation: {
                duration: 0, // general animation time
            },
            hover: {
                animationDuration: 0, // duration of animations when hovering an item
            },
            responsiveAnimationDuration: 0,
            maintainAspectRatio: false, //chart.canvas.parentNode.style.height = '128px';

            //responsive: true,
            //hover: {
            //mode: 'nearest',
            //intersect: true
            //}
        }
    });
}
function chart_correction_draw() {
    var i;
    var dataLabels = [];
    var dataY_portCorrection_values = [];
    for (i = freq_from; i <= freq_to; i++) {
        if (portCorrection_values[i] || openPort_values[i]) {
            dataLabels.push(i);
            dataY_portCorrection_values.push(portCorrection_values[i]);
        }
    }


    if (chart_correction) {
        chart_correction.destroy();
        //alert('destroy');
    }

    var ctx = document.getElementById('chart_correction').getContext('2d');
    chart_correction = new Chart(ctx, {
        type: 'line',
        data: {
            labels: dataLabels,
            datasets: [
                {
                    label: 'portCorrection',
                    fill: false,
                    backgroundColor: '#1a7200',
                    borderWidth: 3,
                    borderColor: '#1a7200',
                    pointStyle: 'circle',
                    radius: 2,
                    data: dataY_portCorrection_values
                },
            ]
        },
        options: {
            scales: {
                yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
            },
            /*elements: {
             line: {
             tension: 0, // disables bezier curves
             }
             },*/
            animation: {
                duration: 0, // general animation time
            },
            hover: {
                animationDuration: 0, // duration of animations when hovering an item
            },
            responsiveAnimationDuration: 0,
            maintainAspectRatio: false, //chart.canvas.parentNode.style.height = '128px';

            //responsive: true,
            //hover: {
            //mode: 'nearest',
            //intersect: true
            //}
        }
    });
}