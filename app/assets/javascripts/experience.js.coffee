$ ->
 new Highcharts.Chart({
            chart: {
                renderTo: 'xp_chart',
                type: 'bar'
            },
            title: {
                text: 'Average tenure depending on role'
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
                    text: 'Years of experience',
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
                name: 'Junior',
                data: [0, 0, 1, 1, 1, 1, 1] 
                }, {
                name: 'Middle',
                data: [3, 3, 3, 3, 2, 3, 3] 
                }, {
                name: 'Senior',
                data: [5, 5, 6, 6, 5, 6, 5]
            }]
        });
