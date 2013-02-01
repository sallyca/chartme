$ ->
 new Highcharts.Chart({
            chart: {
                renderTo: 'golden_chart',
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
                name: 'Kiev',
                data: [2743, 2143, 2030, 2169, 2157, 2064, 1786]
                }, {
                name: 'Lviv',
                data: [1501, 2294, 2084, 1908, 1830, 1635, 1537]
                }, {
                name: 'Kharkov',
                data: [2130, 1469, 1531, 1562, 1789, 1719, 1207]

            }]
        });
