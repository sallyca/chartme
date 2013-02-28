$ ->
 chart = new Highcharts.Chart({
            chart: {
                renderTo: 'average_comp',
                type: 'column'
            },
            title: {
                text: 'Average responses by company'
            },
            subtitle: {
                text: 'Source: dou.ua'
            },
            xAxis: {
                categories: ["Luxoft", "CloneFish","EPAM Systems","Cogniance, Inc","InfoPulse","SysIQ","Ciklum","Sigma Ukraine","DAXX BV", "SoftServe", "Lohika Systems"],
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
                data: [0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0]
            }]
        });
