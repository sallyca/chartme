$ ->
 new Highcharts.Chart({
            chart: {
                renderTo: 'year_chart',
                type: 'bar'
            },
            title: {
                text: 'Average salaries by speciality and date'
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
                name: 'Dec 2011',
                data: [2645, 1779, 1931, 1873, 1852, 1653, 2087, 1466, 1267]               
                },{
                name: 'Dec 2012',
                data: [2789, 2117, 1892, 1946, 1869, 1884, 1803, 1476, 1245]              
            }]
        });
