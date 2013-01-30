$ ->
 new Highcharts.Chart({
            chart: {
                renderTo: 'it_chart',
                type: 'bar'
            },
            title: {
                text: 'Average salaries by speciality'
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
            credits: {
                enabled: false
            },
            series: [{
                showInLegend: false, 
                name: 'Year 2012',
                data: [2864, 2050, 1981, 1954, 1887, 1831, 1794, 1511, 1245]
            }]
        });
