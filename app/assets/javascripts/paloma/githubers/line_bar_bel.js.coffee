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
          categories: ["Eugeny Pankov (Eugeny)", "Sergey Avseyev (avsej)",  "Sergey Tarasevich (nostra13)", "Sergey Nartimov (lest)", "Vasiliy Ermolovich (nashby)"]
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
          data: [100, 66, 64, 59, 54] 

      }, {
          name: 'Repositories',
          color: '#89A54E',
          type: 'column',
          data: [15, 89, 2, 61, 89]   
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
          center: [600, 70],
          size: 100,
          showInLegend: false
      }]
  });