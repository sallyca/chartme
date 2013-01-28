$ ->
 new Highcharts.Chart({
            chart: {
                renderTo: 'srjr_chart',
                type: 'bar'
            },
            title: {
                text: 'Average salaries for Sr. and Jr. roles'
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
                name: 'Junior',
                data: [1152, 1523, 890, 830, 713, 745, 804]
                }, {
                name: 'Middle',
                data: [2034, 1777, 1836, 1780, 1794, 1643, 1421]
                }, {
                name: 'Senior',
                data: [2716, 2763, 2507, 2965, 2767, 2599, 2222]
            }]
        });
