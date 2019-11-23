// https://www.chartjs.org/docs/latest/getting-started/

function init_char(labels, data) {
    // console.log("PROFILE_HANDLER", data);

    let ctx = document.getElementById('progress').getContext('2d');
    let chart = new Chart(ctx, {
        // The type of chart we want to create
        type: 'line',

        // The data for our dataset
        data: {
            labels: labels,
            datasets: [{
                label: 'Мой прогресс',
                backgroundColor: 'rgb(225,225,225)',
                borderColor: 'rgb(87,87,87)',
                data: data,
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

let labels = ['Д1', 'Д2', 'Д3', 'Д4', 'Д5', 'Д6', 'Д7'];
let data = [3, 10, 5, 2, 20, 30, 45];
init_char(labels, data);