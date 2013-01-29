$ ->
 new Highcharts.Chart({
            chart: {
                renderTo: 'year_chart',
                type: 'bar'
            },
            title: {
                text: 'Average salaries depending on the specialization'
            },
            subtitle: {
                text: 'Source: dou.ua'
            },
            xAxis: {
                categories: ['Project manager','Ruby/Rails','Python', 'C++', 'Java',  'Objective-C','C#/.NET', 'PHP', 'QA'],
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
                name: 'Year 2011',
                data: [2645, 1779, 1931, 1873, 1852, 1653, 2087, 1466, 1267]               
                },{
                name: 'Year 2012',
                data: [2864, 2050, 1981, 1954, 1887, 1831, 1794, 1511, 1245]
            }]
        });
