$ ->
 new Highcharts.Chart({
            chart: {
                renderTo: 'city_chart',
                type: 'column'
            },
            title: {
                text: 'Average salaries by speciality and city'
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
                name: 'Odessa',
                data: [2400, 2114, 1820, 1844, 1814, 1434, 1955]
                }, {
                name: 'Dnepropetrovsk',
                data: [2250, 1516, 2198, 1734, 1757, 1624, 1685]
                }, {
                name: 'Donetsk',
                data: [1325, 2100, 1220, 993, 850, 1366, 1293]
            }]
        });
