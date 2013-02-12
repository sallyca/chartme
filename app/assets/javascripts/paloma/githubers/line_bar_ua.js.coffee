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
          categories: ["Paul Miller (paulmillr)", "Vladimir Agafonkin (mourner)", "Alexey Kachayev (kachayev)", "Alexander Solovyov (piranha)", "Serge Koval (mrjoes)","Alexander Beletsky (alexander beletsky)", "Kyrylo Mikos (mik9)", "Eugene Khvedchenya (BloodAxe)", "Sergey Pimenov (olton)", "Mike Chaliy (chaliy)"] 
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
          data: [253, 153, 105, 99, 89, 82, 76, 74, 60, 57] 

      }, {
          name: 'Repositories',
          color: '#89A54E',
          type: 'column',
          data: [24, 12, 15, 33, 16, 33, 32, 10, 2, 47]
      },
      {
          type: 'pie',
          name: 'Total consumption',
          data: [{
              name: 'Python (kachayev, mrjoes)',
              y: 2,
          }, {
              name: 'Javascript (paulmllr, mourner, piranha, alexanderbeletsky)',
              y: 4,
              color: '#89A54E'
          }, {
              name: 'C# (chaliy)',
              y: 1,
              color: Highcharts.getOptions().colors[3]
          }, {
              name: 'C (mik9)',
              y: 1,
              color: Highcharts.getOptions().colors[4] 
          }, {
              name: 'C++ (BloodAxe)',
              y: 1,
              color: Highcharts.getOptions().colors[5]
          }, {
              name: 'PHP, HTML/CSS (olton)',
              y: 1,
              color: Highcharts.getOptions().colors[6] 
          }]
          center: [350, 95],
          size: 100,
          showInLegend: false
      }]
  });