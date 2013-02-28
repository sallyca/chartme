$ ->
 chart = new Highcharts.Chart({
            chart: {
                renderTo: 'average_comp_top',
                type: 'column'
            },
            title: {
                text: 'Average responses by company'
            },
            subtitle: {
                text: 'Source: dou.ua'
            },
            xAxis: {
                categories: ["Ebola Communications", "MirTesen.ru", "Depositphotos", "SightPower Ukraine", "Django Stars", "New Strategies Group", "Ramotion"],
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
                data: [7, 6, 6, 5, 5, 6, 6] 
            }]
        });
