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
    $(".avg-weight").text((avg.weight) ? avg.weight : defaultNan);
    $(".avg-proteins").text((avg.proteins) ? avg.proteins : defaultNan);
    $(".avg-fats").text((avg.fats) ? avg.fats : defaultNan);
    $(".avg-carbohydrates").text((avg.carbohydrates) ? avg.carbohydrates : defaultNan);
}

function init_weight() {
    let weight = progress.weights.last();
    $(".current-weight").text((weight) ? weight : defaultNan);
}