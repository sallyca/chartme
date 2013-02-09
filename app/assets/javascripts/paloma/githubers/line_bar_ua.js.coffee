$ ->
  new Highcharts.Chart({
      chart: {
          renderTo: 'line_bar_ua',
          zoomType: 'xy'
      },
      title: {
          text: 'Top Github Users Ukraine'
      },
      subtitle: {
          text: 'Source: dou.ua'
      },
      xAxis: [{
          categories: ["Paul Miller ", "Vladimir Agafonkin", "Alexey Kachayev ", "Alexander Solovyov ", "Serge Koval ", "Kyrylo Mikos", "Alexander Beletsky  ", "Eugene Khvedchenya", "Sergey Pimenov", "Mike Chaliy"] 
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
          data: [222, 146, 93, 89, 84, 76, 76, 61, 54, 54] 

      }, {
          name: 'Repositories',
          color: '#89A54E',
          type: 'spline',
          data: [24, 12, 15, 33, 16, 32, 33, 10, 2, 47]  
      }]
  });