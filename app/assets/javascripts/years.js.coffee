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
                name: 'Year 2012',
                data: [2864, 2050, 1981, 1954, 1887, 1831, 1794, 1511, 1245]
                },{
                name: 'Year 2011',
                data: [3251, 1795, 2320, 2139, 2162, 2237, 2599, 2302, 1572]
            }]
        });
