
var dataCorrection = [];
var correction_coefs = [];

var dataDUT_1 = [];
var dataDUT_2 = [];
var dataDUT_3 = [];
var dataDUT_4 = [];
var dataDUT_5 = [];
var dataDUT_6 = [];

var freq_from = 0; //MHz
var freq_to = 0; //MHz

var isUseCorrection = false;

var chart_DUT = false;
var chart_correction = false;

document.addEventListener('DOMContentLoaded', function () {
    btn_draw();
});

function btn_draw() {
    $('#btn_draw').click(function () {
        freq_from = parseInt($('#freq_from').val()) || 0; //MHz
        freq_to = parseInt($('#freq_to').val()); //MHz
        isUseCorrection = $("#isUseCorrection").prop('checked');

        correction_fill();
        calc_correction_coefs();
        DUT_fill();

        chart_DUT_draw();
        chart_correction_draw();
    });
    $('#btn_sweep').show();
}

function DUT_fill() {
    let res, ar, tmp, freq, volt;

    res = $('#dataDUT_1').val();
    ar = res.split('\n');
    $(ar).each(function (i, item) {
        tmp = item.split(';');
        freq = parseInt(tmp[0]) || 0;
        volt = parseInt(tmp[1]) || 0;
        if (freq > 0 && volt > 0) {
            dataDUT_1[freq] = volt;
        }
    });

    res = $('#dataDUT_2').val();
    ar = res.split('\n');
    $(ar).each(function (i, item) {
        tmp = item.split(';');
        freq = parseInt(tmp[0]) || 0;
        volt = parseInt(tmp[1]) || 0;
        if (freq > 0 && volt > 0) {
            dataDUT_2[freq] = volt;
        }
    });

    res = $('#dataDUT_3').val();
    ar = res.split('\n');
    $(ar).each(function (i, item) {
        tmp = item.split(';');
        freq = parseInt(tmp[0]) || 0;
        volt = parseInt(tmp[1]) || 0;
        if (freq > 0 && volt > 0) {
            dataDUT_3[freq] = volt;
        }
    });

    res = $('#dataDUT_4').val();
    ar = res.split('\n');
    $(ar).each(function (i, item) {
        tmp = item.split(';');
        freq = parseInt(tmp[0]) || 0;
        volt = parseInt(tmp[1]) || 0;
        if (freq > 0 && volt > 0) {
            dataDUT_4[freq] = volt;
        }
    });

    res = $('#dataDUT_5').val();
    ar = res.split('\n');
    $(ar).each(function (i, item) {
        tmp = item.split(';');
        freq = parseInt(tmp[0]) || 0;
        volt = parseInt(tmp[1]) || 0;
        if (freq > 0 && volt > 0) {
            dataDUT_5[freq] = volt;
        }
    });
    
    res = $('#dataDUT_6').val();
    ar = res.split('\n');
    $(ar).each(function (i, item) {
        tmp = item.split(';');
        freq = parseInt(tmp[0]) || 0;
        volt = parseInt(tmp[1]) || 0;
        if (freq > 0 && volt > 0) {
            dataDUT_6[freq] = volt;
        }
    });
}

function correction_fill() {
    let res = $('#dataCorrection').val();
    let ar = res.split('\n');
    let tmp, freq, volt;
    $(ar).each(function (i, item) {
        tmp = item.split(';');
        freq = parseInt(tmp[0]) || 0;
        volt = parseInt(tmp[1]) || 0;
        if (freq > 0 && volt > 0) {
            dataCorrection[freq] = volt;
        }
    });
}

function calc_correction_coefs() {
    let i;
    let dataCorrection_freqsRange = [];
    for (i = freq_from; i <= freq_to; i++) {
        if (typeof dataCorrection[i] !== 'undefined') {
            dataCorrection_freqsRange.push(dataCorrection[i]);
        }
    }
    let dataCorrection_freqsRange_min = Math.min.apply(null, dataCorrection_freqsRange);
    for (i = freq_from; i <= freq_to; i++) {
        if (typeof dataCorrection[i] !== 'undefined') {
            correction_coefs[i] = dataCorrection_freqsRange_min / dataCorrection[i];
        }
    }
}

function chart_DUT_draw() {    
    let i;
    let dataLabels = [];
    let dataY_dataDUT_1 = [];
    let dataY_dataDUT_2 = [];
    let dataY_dataDUT_3 = [];
    let dataY_dataDUT_4 = [];
    let dataY_dataDUT_5 = [];
    let dataY_dataDUT_6 = [];
    let dataY_dataCorrection = [];
    for (i = freq_from; i <= freq_to; i++) {
        let dataLabelIsPushed = false;
        if (typeof dataCorrection[i] !== 'undefined') {
            let pointVal = parseInt(dataCorrection[i]) || 0;
            if (pointVal > 0) {
                if (!dataLabelIsPushed) {
                    dataLabels.push(i);
                    dataLabelIsPushed = true;
                }
                if (isUseCorrection && typeof correction_coefs[i] !== 'undefined') {
                    dataY_dataCorrection.push(Math.round(dataCorrection[i] * correction_coefs[i]));
                } else {
                    dataY_dataCorrection.push(dataCorrection[i]);
                }
            }
        }

        if (typeof dataDUT_1[i] !== 'undefined') {
            let pointVal = parseInt(dataDUT_1[i]) || 0;
            if (pointVal > 0) {
                if (!dataLabelIsPushed) {
                    dataLabels.push(i);
                    dataLabelIsPushed = true;
                }
                if (isUseCorrection && typeof correction_coefs[i] !== 'undefined') {
                    dataY_dataDUT_1.push(Math.round(dataDUT_1[i] * correction_coefs[i]));
                } else {
                    dataY_dataDUT_1.push(dataDUT_1[i]);
                }
            }
        }

        if (typeof dataDUT_2[i] !== 'undefined') {
            let pointVal = parseInt(dataDUT_2[i]) || 0;
            if (pointVal > 0) {
                if (!dataLabelIsPushed) {
                    dataLabels.push(i);
                    dataLabelIsPushed = true;
                }
                if (isUseCorrection && typeof correction_coefs[i] !== 'undefined') {
                    dataY_dataDUT_2.push(Math.round(dataDUT_2[i] * correction_coefs[i]));
                } else {
                    dataY_dataDUT_2.push(dataDUT_2[i]);
                }
            }
        }

        if (typeof dataDUT_3[i] !== 'undefined') {
            let pointVal = parseInt(dataDUT_3[i]) || 0;
            if (pointVal > 0) {
                if (!dataLabelIsPushed) {
                    dataLabels.push(i);
                    dataLabelIsPushed = true;
                }
                if (isUseCorrection && typeof correction_coefs[i] !== 'undefined') {
                    dataY_dataDUT_3.push(Math.round(dataDUT_3[i] * correction_coefs[i]));
                } else {
                    dataY_dataDUT_3.push(dataDUT_3[i]);
                }
            }
        }

        if (typeof dataDUT_4[i] !== 'undefined') {
            let pointVal = parseInt(dataDUT_4[i]) || 0;
            if (pointVal > 0) {
                if (!dataLabelIsPushed) {
                    dataLabels.push(i);
                    dataLabelIsPushed = true;
                }
                if (isUseCorrection && typeof correction_coefs[i] !== 'undefined') {
                    dataY_dataDUT_4.push(Math.round(dataDUT_4[i] * correction_coefs[i]));
                } else {
                    dataY_dataDUT_4.push(dataDUT_4[i]);
                }
            }
        }

        if (typeof dataDUT_5[i] !== 'undefined') {
            let pointVal = parseInt(dataDUT_5[i]) || 0;
            if (pointVal > 0) {
                if (!dataLabelIsPushed) {
                    dataLabels.push(i);
                    dataLabelIsPushed = true;
                }
                if (isUseCorrection && typeof correction_coefs[i] !== 'undefined') {
                    dataY_dataDUT_5.push(Math.round(dataDUT_5[i] * correction_coefs[i]));
                } else {
                    dataY_dataDUT_5.push(dataDUT_5[i]);
                }
            }
        }
        
        if (typeof dataDUT_6[i] !== 'undefined') {
            let pointVal = parseInt(dataDUT_6[i]) || 0;
            if (pointVal > 0) {
                if (!dataLabelIsPushed) {
                    dataLabels.push(i);
                    dataLabelIsPushed = true;
                }
                if (isUseCorrection && typeof correction_coefs[i] !== 'undefined') {
                    dataY_dataDUT_6.push(Math.round(dataDUT_6[i] * correction_coefs[i]));
                } else {
                    dataY_dataDUT_6.push(dataDUT_6[i]);
                }
            }
        }

    }

    if (chart_DUT) {
        chart_DUT.destroy();
    }

    let ctx = document.getElementById('chart_DUT').getContext('2d');
    chart_DUT = new Chart(ctx, {
        type: 'line',
        data: {
            labels: dataLabels,
            datasets: [
                {
                    label: 'DUT 1',
                    fill: false,
                    backgroundColor: '#ff0000',
                    borderWidth: 3,
                    borderColor: '#ff0000',
                    pointStyle: 'circle',
                    radius: 1,
                    data: dataY_dataDUT_1
                },
                {
                    label: 'DUT 2',
                    fill: false,
                    backgroundColor: '#1a75ff',
                    borderWidth: 3,
                    borderColor: '#1a75ff',
                    pointStyle: 'circle',
                    radius: 1,
                    data: dataY_dataDUT_2
                },
                {
                    label: 'DUT 3',
                    fill: false,
                    backgroundColor: '#00e600',
                    borderWidth: 3,
                    borderColor: '#00e600',
                    pointStyle: 'circle',
                    radius: 1,
                    data: dataY_dataDUT_3
                },
                {
                    label: 'DUT 4',
                    fill: false,
                    backgroundColor: '#ff9900',
                    borderWidth: 3,
                    borderColor: '#ff9900',
                    pointStyle: 'circle',
                    radius: 1,
                    data: dataY_dataDUT_4
                },
                {
                    label: 'DUT 5',
                    fill: false,
                    backgroundColor: '#ff00ff',
                    borderWidth: 3,
                    borderColor: '#ff00ff',
                    pointStyle: 'circle',
                    radius: 1,
                    data: dataY_dataDUT_5
                },
                {
                    label: 'DUT 6',
                    fill: false,
                    backgroundColor: '#e1eb34',
                    borderWidth: 3,
                    borderColor: '#e1eb34',
                    pointStyle: 'circle',
                    radius: 1,
                    data: dataY_dataDUT_6
                },
                {
                    label: 'Correction',
                    fill: false,
                    backgroundColor: '#000033',
                    borderWidth: 3,
                    borderColor: '#000033',
                    pointStyle: 'circle',
                    radius: 1,
                    data: dataY_dataCorrection
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
    let i;
    let dataLabels = [];
    let dataY_dataCorrection = [];
    for (i = freq_from; i <= freq_to; i++) {
        if (typeof dataCorrection[i] !== 'undefined') {
            let pointVal = parseInt(dataCorrection[i]) || 0;
            if (pointVal > 0) {
                dataLabels.push(i);
                dataY_dataCorrection.push(pointVal);
            }
        }
    }


    if (chart_correction) {
        chart_correction.destroy();
        //alert('destroy');
    }

    let ctx = document.getElementById('chart_correction').getContext('2d');
    chart_correction = new Chart(ctx, {
        type: 'line',
        data: {
            labels: dataLabels,
            datasets: [
                {
                    label: 'Correction',
                    fill: false,
                    backgroundColor: '#1a7200',
                    borderWidth: 3,
                    borderColor: '#1a7200',
                    pointStyle: 'circle',
                    radius: 2,
                    data: dataY_dataCorrection
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