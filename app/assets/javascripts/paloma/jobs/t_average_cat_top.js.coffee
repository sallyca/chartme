$ ->
 chart = new Highcharts.Chart({
            chart: {
                renderTo: 'average_cat',
                type: 'column'
            },
            title: {
                text: 'Average responses by speciality'
            },
            subtitle: {
                text: 'Source: dou.ua'
            },
            xAxis: {
                categories: ["Project Manager", "QA", "Analyst", "PHP", "Android", "Front End", "Sales", "Delphi", "HR"],
                title: {
                    text: null
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: 'Responses',
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
                data: [3, 2, 2, 1, 2, 1, 1, 1, 1]
            }]
        });
