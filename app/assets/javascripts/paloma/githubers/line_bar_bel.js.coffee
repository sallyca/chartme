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
          categories: ["Sergey Avseyev", "Sergey Nartimov", "Sergey Tarasevich", "Vasiliy Ermolovich", "Eugeny Pankov"]
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
          type: 'spline',
          data: [89, 61, 2, 89, 15]   
      },
      {
          type: 'pie',
          name: 'Total consumption',
          data: [{
              name: 'Java',
              y: 1,
              color: '#4572A7' 
          }, {
              name: 'Ruby',
              y: 3,
              color: '#AA4643' 
          }, {
              name: 'C#',
              y: 1,
              color: '#89A54E'
          }]
          center: [600, 30],
          size: 100,
          showInLegend: false
      }]
  });