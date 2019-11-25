// TODO: Fix ??? Undefined???
let progress = {};
let defaultNan = "(?)";

function init_progress() {
    $.ajax({
        async: false,
        type: "GET",
        contentType: "application/json",
        url: "/api/diary/all",
        data: {},
        dataType: 'json',
        cache: false,
        timeout: 600000,
        success: function (data) {
            console.log("SUCCESS", data);
            compute_progress(data);
        },
        error: function (e) {
            console.log("ERROR", e)
        }
    });
}

function compute_progress(data) {
    // TODO: Optimize!
    progress.labels = data.map((r) => `Д${r.day}`);
    progress.weights = data.map((r) => r.weight);
    progress.proteins = data.map((r) => r.proteins);
    progress.fats = data.map((r) => r.fats);
    progress.carbohydrates = data.map((r) => r.carbohydrates);
}


// https://www.chartjs.org/docs/latest/getting-started/
// Other options: https://www.chartjs.org/docs/latest/configuration/elements.html
// https://stackoverflow.com/questions/45104743/draw-two-plots-using-chartjs-over-one-another-with-transparency
Chart.defaults.global.elements.line.borderWidth = 1;

function init_chart() {
    let ctx = document.getElementById('progress').getContext('2d');
    let chart = new Chart(ctx, {
        // The type of chart we want to create
        type: 'line',

        // The data for our dataset
        data: {
            labels: progress.labels,
            datasets: [{
                label: 'Вес',
                backgroundColor: 'rgba(225,225,225,0.7)',
                borderColor: 'rgba(87,87,87,0.7)',
                data: progress.weights,
            }, {
                label: 'Белки',
                backgroundColor: 'rgba(148,225,181,0.7)',
                borderColor: 'rgba(90,141,111, 0.7)',
                data: progress.proteins,
            }, {
                label: 'Жиры',
                backgroundColor: 'rgba(225,174,156,0.7)',
                borderColor: 'rgba(148,111,103,0.7)',
                data: progress.fats,
            }, {
                label: 'Углеводы',
                backgroundColor: 'rgba(165,207,225,0.7)',
                borderColor: 'rgba(109,134,147,0.7)',
                data: progress.carbohydrates,
            }]
        },

        // Configuration options go here
        options: {
            elements: {
                line: {
                    tension: 0 // disables bezier curves
                }
            }
        }
    });
}

function init_avg(weights = false, pfc = true) {
    // Average: 73/35/140
    let avg = {
        weight: average(progress.weights),
        proteins: average(progress.proteins),
        fats: average(progress.fats),
        carbohydrates: average(progress.carbohydrates)
    };
    $(".avg-weight").text((avg.weight) ? avg.weight.toFixed(2) : defaultNan);
    $(".avg-proteins").text((avg.proteins) ? avg.proteins.toFixed(2) : defaultNan);
    $(".avg-fats").text((avg.fats) ? avg.fats.toFixed(2) : defaultNan);
    $(".avg-carbohydrates").text((avg.carbohydrates) ? avg.carbohydrates.toFixed(2) : defaultNan);
}

function init_weight() {
    let weight = progress.weights.last();
    $(".current-weight").text((weight) ? weight : defaultNan);
}

function init_chart_diagram() {
    console.log("DIAGRAM");
    let data = [progress.proteins.last(), progress.fats.last(), progress.carbohydrates.last()];
    let labels = ["Белки", "Жиры", "Углеводы"];

    let ctx = document.getElementById('progress-diagram').getContext('2d');
    let chart = new Chart(ctx, {
        // The type of chart we want to create
        type: 'pie',

        // The data for our dataset
        /*data: {
            labels: ['Red', 'Yellow', 'Blue'],
            datasets: [{
                data: [10, 20, 30]
            }],
        }*/
        data: {
            labels: labels,
            datasets: [{
                label: "За последний день в дневнике",
                // https://stackoverflow.com/questions/28828915/how-set-color-family-to-pie-chart-in-chart-js
                // https://www.chartjs.org/docs/latest/charts/doughnut.html
                // https://github.com/chartjs/Chart.js/blob/master/samples/scriptable/pie.html
                backgroundColor: ["#61bed9", "#ffd6b1", "#aa97cc"],
                // backgroundColor: 'rgba(225,225,225,0.7)',
                // borderColor: 'rgba(87,87,87,0.7)',
                data: data,
            }]
        },
    });
}