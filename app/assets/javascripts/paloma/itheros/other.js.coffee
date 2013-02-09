
$ ->
 new Highcharts.Chart({
            chart: {
                renderTo: 'other_chart',
                type: 'bar'
            },
            title: {
                text: 'Average salaries by speciality'
            },
            subtitle: {
                text: 'Source: dou.ua'
            },
            xAxis: {
                categories: ['System Administrator', 'Designer', 'Business Analyst','HTML/CSS','Game-designer','Support', 'HR'],
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
                showInLegend: false, 
                name: 'Year 2012',
                data: [1364, 1292, 1787, 979, 1470, 944, 1047]
            }]
        });
