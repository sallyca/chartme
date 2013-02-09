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
                data: [1152, 775, 893, 822, 765, 759, 689]
                }, {
                name: 'Middle',
                data: [2095, 1790, 1768, 1766, 1836, 1640, 1391]
                }, {
                name: 'Senior',
                data: [2885, 2763, 2535, 2927, 2767, 2612, 2216]
            }]
        });
