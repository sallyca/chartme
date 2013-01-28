$ ->
 new Highcharts.Chart({
            chart: {
                renderTo: 'gender_chart',
                type: 'bar'
            },
            title: {
                text: 'Average salaries depending on gender :)'
            },
            subtitle: {
                text: 'Source: dou.ua'
            },
            xAxis: {
                categories: ['Ruby/Rails','Python', 'C++', 'Java',  'Objective-C','C#/.NET', 'PHP'],
                title: {
                    text: null
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: 'Dollars(USD)',
                    align: 'high'
                },
                labels: {
                    overflow: 'justify'
                }
            },
            plotOptions: {
                bar: {
                    dataLabels: {
                        enabled: true
                    }
                }
            },
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'top',
                x: -10,
                y: 350,
                floating: true,
                borderWidth: 1,
                backgroundColor: '#FFFFFF',
                shadow: true
            },
            credits: {
                enabled: false
            },
            series: [{
                name: 'Male',
                data: [2034, 1923, 1956, 1905, 1863, 1807, 1514]
                }, {
                name: 'Female',
                data: [3000, 3916, 1850, 1163, 1308, 1340, 1378]
            }]
        });
