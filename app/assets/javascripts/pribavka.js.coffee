$ ->
 new Highcharts.Chart({
            chart: {
                renderTo: 'increase_chart',
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
                data: [552, 444, 277, 523, 443, 370, 439]
                }, {
                name: 'Middle',
                data: [572, 434, 436, 476, 547, 431, 350]
                }, {
                name: 'Junior',
                data: [231, -138, 93, 256, 210, 201, 58]
            }]
        });
