$ ->
 new Highcharts.Chart({
            chart: {
                renderTo: 'city_chart',
                type: 'bar'
            },
            title: {
                text: 'Average salaries depending on the speciality and the city'
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
                name: 'Dnepropetrovsk',
                data: [2250, 1442, 2198, 1734, 1537, 1624, 1685]
                }, {
                name: 'Donetsk',
                data: [1325, 1666, 1220, 993, 850, 1366, 1258]
                }, {
                name: 'Odessa',
                data: [2400, 2114, 2563, 1860, 1814, 1434, 1955]
            }]
        });
