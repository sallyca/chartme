$ ->
  chart = new Highcharts.Chart({
    chart: {
        renderTo: 'pie_comp',
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false
    },
    title: {
        text: 'Top Job Companies'
    },
    subtitle: {
          text: 'Source: dou.ua'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage}%</b>',
        percentageDecimals: 1
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer'
        }
    },
    series: [{
        type: 'pie',
        name: 'Jobs count',
        data: [
            ["Ciklum",168],
            ["Luxoft", 108],
            ["SoftServe",64],
            ["EPAM Systems",58],
            ["Lohika Systems",32],
            ["Sigma Ukraine",28],
            ["DAXX BV",27],
            ["CloneFish", 25],
            ["Cogniance, Inc",25],
            ["InfoPulse",21],
            ["SysIQ",17], 
            ['Other',   732]
        ]
    }]
  });