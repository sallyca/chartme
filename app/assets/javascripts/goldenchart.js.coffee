$ ->
 new Highcharts.Chart({
            chart: {
                renderTo: 'golden_chart',
                type: 'column'
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
                name: 'Kiev',
                data: [2606, 2367, 1988, 2160, 2115, 2049, 1834]
                }, {
                name: 'Lviv',
                data: [1386, 2294, 2084, 1969, 1830, 1609, 1537]
                }, {
                name: 'Kharkov',
                data: [2130, 1469, 1480, 1650, 1719, 1724, 1291]

            }]
        });
