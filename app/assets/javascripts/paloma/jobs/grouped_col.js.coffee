$ ->
  chart = new Highcharts.Chart({
    chart: {
        renderTo: 'grouped',
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false
    },
    title: {
        text: 'Top Job Categories'
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
            ['QA',       161],
            ['.NET',     156],
            ['Java',       140],
            ['PHP',   121],
            ['Front End', 108],
            ['C++',     82],
            ['iOS/Mac',    39],
            ['Python',   31],
            ['Project Manager',   30],
            ['Analyst', 29],
            ['Android',   28],
            ['iOS',   24],
            ['Дизайн', 24]
            ['Ruby',    22],
            ['Support',    22],
            ['Other',   279]
        ]
    }]
  });