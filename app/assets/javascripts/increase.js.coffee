$ ->
 new Highcharts.Chart({
            chart: {
                renderTo: 'increase2_chart',
                type: 'column'
            },
            title: {
                text: 'Average increase in salaries'
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
                x: -50,
                y: 70,
                floating: true,
                borderWidth: 1,
                backgroundColor: '#FFFFFF',
                shadow: true
            },
            credits: {
                enabled: false
            },
            series: [{
                name: 'Senior',
                data: [563, 513, -8, 308, 288, -261, 156] 
                }, {
                name: 'Middle',
                data: [84, -197, 172, 111, 137, 40, 24] 
                }, {
                name: 'Junior',
                data: [471, 663, 36, 115, 24, -865, 52] 
            }]
        });
