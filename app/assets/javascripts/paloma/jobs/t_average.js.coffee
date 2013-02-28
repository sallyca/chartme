$ ->
 chart = new Highcharts.Chart({
            chart: {
                renderTo: 'average',
                type: 'column'
            },
            title: {
                text: 'Average responses by speciality'
            },
            subtitle: {
                text: 'Source: dou.ua'
            },
            xAxis: {
                categories: ['QA', '.NET', 'Java', 'PHP','Front End','C++', 'iOS/Mac', 'Python','Project Manager','Analyst','Android','iOS','Дизайн','Ruby', 'Support'],
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
                data: [2, 0, 0, 1, 1, 0, 0, 0, 3, 2, 2, 0, 0, 0, 0]
            }]
        });
