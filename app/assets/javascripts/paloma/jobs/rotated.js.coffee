$ ->
  chart = new Highcharts.Chart({
    chart: {
        renderTo: 'rotated',
        type: 'column',
        margin: [ 50, 50, 100, 80]
    },
    title: {
        text: 'Hot jobs 2013'
    },
    subtitle: {
          text: 'Source: dou.ua'
    },
    xAxis: {
        categories: ["Project manager", "QA Специалист (Web)", "QA engineer", "Junior tester", "Project Manager", "Tester", "QA Engineer (Middle, Junior)", "QA-engineer", "Junior/Middle QA Automation Engineer", "Middle QA Engineer (game, web) от 800$", "Business Analyst, Support", "iPhone (iPad) Developer", "QA Tester", "Junior Software Developer (C++,C#)", "QA Senior/Lead", "Senior Project Manager", "Junior Manual Tester"
        ],
        labels: {
            rotation: -45,
            align: 'right',
            style: {
                fontSize: '13px',
                fontFamily: 'Verdana, sans-serif'
            }
        }
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Responses'
        }
    },
    legend: {
        enabled: false
    },
    tooltip: {
        formatter: ->
            return '<b>'+ this.x +'</b><br/>'+
                'Population in 2008: '+ Highcharts.numberFormat(this.y, 1) +
                ' millions';
    },
    series: [{
      name: 'Responses',
      data: [20, 18, 17, 17, 13, 13, 12, 12, 12, 12, 11, 11, 11, 11, 11, 11, 10],
      dataLabels: {
          enabled: true,
          rotation: -90,
          color: '#FFFFFF',
          align: 'right',
          x: 3,
          y: 10,
          style: {
              fontSize: '13px',
              fontFamily: 'Verdana, sans-serif'
          }
      }
    }]
  });