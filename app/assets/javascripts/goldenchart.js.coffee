$ ->
 new Highcharts.Chart({
            chart: {
                renderTo: 'golden_chart',
                type: 'bar'
            },
            title: {
                text: 'Средние зарплаты по специализациям и городам'
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
                x: -100,
                y: 100,
                floating: true,
                borderWidth: 1,
                backgroundColor: '#FFFFFF',
                shadow: true
            },
            credits: {
                enabled: false
            },
            series: [{
                name: 'Львов',
                data: [1386, 2294, 2084, 1969, 1830, 1609, 1537]
                }, {
                name: 'Харьков',
                data: [2130, 1469, 1480, 1650, 1719, 1724, 1291]
                }, {
                name: 'Киев',
                data: [2606, 2367, 1988, 2160, 2115, 2049, 1834]
            }]
        });
