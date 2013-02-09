$ ->
  new Highcharts.Chart({
      chart: {
          renderTo: 'line_bar',
          zoomType: 'xy'
      },
      title: {
          text: 'Top Github Users Russia'
      },
      subtitle: {
          text: 'Source: dou.ua'
      },
      xAxis: [{
          categories: ["Grigory Bakunov", "Fedor Indutny", "Nicholas Semendyaev", "Sergey Chikuyonok", "Alexander Makarov", "Max Lapshin", " Andrey Sitnik", " Nikita Vasilyev", "Yaroslav Markin", "Vadim Makeev"]
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
          data: [392, 370, 330, 330, 213, 209, 155, 150, 145, 144]

      }, {
          name: 'Repositories',
          color: '#89A54E',
          type: 'spline',
          data: [16, 96, 43, 26, 27, 31, 23, 62, 12, 19] 
      }]
  });