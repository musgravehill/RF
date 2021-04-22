
var portCorrection_values = []; //input values from device
var portCorrection_correction_coef = []; //coefficient for corrction

var portDUT_values = []; //input values from device

var portReference_values = []; //input values from device SWR=1, 1.5, 2, 3 etc

var freq_from = 0; //MHz
var freq_to = 0; //MHz

var isUsePortCorrection = false;

var chart_portDUT = false;
var chart_portCorrection = false;

document.addEventListener('DOMContentLoaded', function () {
    btn_draw();
});

function btn_draw() {
    $('#btn_draw').click(function () {
        freq_from = parseInt($('#freq_from').val()); //MHz
        freq_to = parseInt($('#freq_to').val()); //MHz
        isUsePortCorrection = $("#isUsePortCorrection").prop('checked');
        portCorrection_fill();
        portCorrection_calc_correction_coef();
        portDUT_fill();
        portReference_fill();
        chart_portDUT_draw();
        chart_portCorrection_draw();
    });
    $('#btn_sweep').show();
}

function portReference_fill() {
    var res = $('#portReference').val();
    var ar = res.split('\n');
    var tmp, freq, volt;
    $(ar).each(function (i, item) {
        tmp = item.split(';');
        freq = parseInt(tmp[0]);
        volt = parseInt(tmp[1]);
        if (freq > 0 && volt > 0) {
            //console.log('f=' + freq + ' v=' + volt);
            portReference_values[freq] = volt;
        }
    });
}

function portDUT_fill() {
    var res = $('#portDUT').val();
    var ar = res.split('\n');
    var tmp, freq, volt;
    $(ar).each(function (i, item) {
        tmp = item.split(';');
        freq = parseInt(tmp[0]);
        volt = parseInt(tmp[1]);
        if (freq > 0 && volt > 0) {
            //console.log('f=' + freq + ' v=' + volt);
            portDUT_values[freq] = volt;
        }
    });
}

function portCorrection_fill() {
    var res = $('#portCorrection').val();
    var ar = res.split('\n');
    var tmp, freq, volt;
    $(ar).each(function (i, item) {
        tmp = item.split(';');
        freq = parseInt(tmp[0]);
        volt = parseInt(tmp[1]);
        if (freq > 0 && volt > 0) {
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
    var portCorrection_values_freqsRange_min = Math.min.apply(null, portCorrection_values_freqsRange);
    for (i = freq_from; i <= freq_to; i++) {
        if (portCorrection_values[i]) {
            portCorrection_correction_coef[i] = portCorrection_values_freqsRange_min / portCorrection_values[i];
        }
    }
}

function chart_portDUT_draw() {
    var i;
    var dataLabels = [];
    var dataY_portDUT_values = [];
    var dataY_portReference_values = [];
    for (i = freq_from; i <= freq_to; i++) {
        if (portDUT_values[i]) {
            dataLabels.push(i);
            if (isUsePortCorrection && portCorrection_correction_coef[i]) {
                dataY_portDUT_values.push(Math.round(portDUT_values[i] * portCorrection_correction_coef[i]));
                dataY_portReference_values.push(Math.round(portReference_values[i] * portCorrection_correction_coef[i]));
            } else {
                dataY_portDUT_values.push(portDUT_values[i]);
                dataY_portReference_values.push(portReference_values[i]);
            }
        }
    }

    if (chart_portDUT) {
        chart_portDUT.destroy();
        //alert('destroy');
    }

    var ctx = document.getElementById('chart_portDUT').getContext('2d');
    chart_portDUT = new Chart(ctx, {
        type: 'line',
        data: {
            labels: dataLabels,
            datasets: [
                {
                    label: 'portDUT',
                    fill: false,
                    backgroundColor: '#ff2600',
                    borderWidth: 3,
                    borderColor: '#ff2600',
                    pointStyle: 'circle',
                    radius: 1,
                    data: dataY_portDUT_values
                },
                {
                    label: 'portReference',
                    fill: false,
                    backgroundColor: '#0026ff',
                    borderWidth: 3,
                    borderColor: '#0026ff',
                    pointStyle: 'circle',
                    radius: 1,
                    data: dataY_portReference_values
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
function chart_portCorrection_draw() {
    var i;
    var dataLabels = [];
    var dataY_portCorrection_values = [];
    for (i = freq_from; i <= freq_to; i++) {
        if (portCorrection_values[i]) {
            dataLabels.push(i);
            dataY_portCorrection_values.push(portCorrection_values[i]);
        }
    }


    if (chart_portCorrection) {
        chart_portCorrection.destroy();
        //alert('destroy');
    }

    var ctx = document.getElementById('chart_portCorrection').getContext('2d');
    chart_portCorrection = new Chart(ctx, {
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