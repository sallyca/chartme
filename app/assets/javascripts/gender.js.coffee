$ ->
 new Highcharts.Chart({
            chart: {
                renderTo: 'gender_chart',
                type: 'bar'
            },
            title: {
                text: 'Gender inequality'
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
                data: [2102, 1913, 1948, 1888, 1920, 1816, 1479]
                }, {
                name: 'Female',
                data: [0, 0, 1850, 1163, 1308, 1340, 1378]
            }]
        });
