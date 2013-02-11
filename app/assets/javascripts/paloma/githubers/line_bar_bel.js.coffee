$ ->
  new Highcharts.Chart({
      chart: {
          renderTo: 'line_bar_bel',
          zoomType: 'xy'
      },
      title: {
          text: 'Top Github Users Belarus'
      },
      subtitle: {
          text: 'Source: dou.ua'
      },
      xAxis: [{
          categories: ["Sergey Avseyev (avsej)", "Sergey Nartimov (lest)", "Sergey Tarasevich (nostra13)", "Vasiliy Ermolovich (nashby)", "Eugeny Pankov (Eugeny)"]
      }],
      yAxis: [{
          labels: {
              style: {
                  color: '#89A54E'
              }
          },
          title: {
              text: 'Num of repos',
              style: {
                  color: '#89A54E'
              }
          }
      }, { 
          title: {
              text: 'Followers',
              style: {
                  color: '#4572A7'
              }
          },
          labels: {
              style: {
                  color: '#4572A7'
              }
          },
          opposite: true
      }],
      legend: {
          layout: 'vertical',
          align: 'left',
          x: 120,
          verticalAlign: 'top',
          y: 100,
          floating: true,
          backgroundColor: '#FFFFFF'
      },
      series: [{
          name: 'Followers',
          color: '#4572A7',
          type: 'column',
          yAxis: 1,
          data: [66, 59, 55, 53, 53]

      }, {
          name: 'Repositories',
          color: '#89A54E',
          type: 'column',
          data: [89, 61, 2, 89, 15]   
      },
      {
          type: 'pie',
          name: 'Total consumption',
          data: [{
              name: 'Java (nostra13)',
              y: 1,
              color: '#4572A7' 
          }, {
              name: 'Ruby (avsej, lest, nashby)',
              y: 3,
              color: '#AA4643' 
          }, {
              name: 'C# (Evgeny)',
              y: 1,
              color: '#89A54E'
          }]
          center: [600, 30],
          size: 100,
          showInLegend: false
      }]
  });