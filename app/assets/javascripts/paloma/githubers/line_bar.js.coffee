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
          categories: ["Grigory Bakunov (bobuk)", "Fedor Indutny (indutny)", "Nicholas Semendyaev (Quarx2k)", "Sergey Chikuyonok (sergeche)", "Alexander Makarov (samdark)", "Max Lapshin (maxlapshin)", " Andrey Sitnik (ai)", " Nikita Vasilyev (NV)", "Yaroslav Markin (yaroslav)", "Vadim Makeev (pepelsbey)"]
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
          y: 60,
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
          type: 'column',
          data: [16, 96, 43, 26, 27, 31, 23, 62, 12, 19] 
      },
      {
          type: 'pie',
          name: 'Total consumption',
          data: [{
              name: 'Python (bobuk)',
              y: 1,
              color: '#4572A7' 
          }, {
              name: 'Ruby (yaroslav, NV, ai, maxlapshin)',
              y: 4,
              color: '#AA4643' 
          }, {
              name: 'Javascript (indutny, NV, pepelsbey)',
              y: 4,
              color: '#89A54E'
          }, {
              name: 'Coffeescript (ai, sergeche)',
              y: 2,
              color: Highcharts.getOptions().colors[3]
          }, {
              name: 'C (Quarx2k, indutny)',
              y: 2,
              color: Highcharts.getOptions().colors[4] 
          }, {
              name: 'C++ (indutny)',
              y: 1,
              color: Highcharts.getOptions().colors[5]
          }, {
              name: 'Erlang (maxlapshin)',
              y: 1,
              color: Highcharts.getOptions().colors[6]
          }, {
              name: 'Java (sergeche)',
              y: 1,
              color: Highcharts.getOptions().colors[7]
          }, {
              name: 'PHP (samdark)',
              y: 1,
              color: Highcharts.getOptions().colors[8] 
          }]
          center: [400, 100],
          size: 100,
          showInLegend: false
      }]
  });