var myData = $.ajax({
  method: 'GET',
  url: 'graphs/data2',
  dataType: 'json',
  success: function(data) {
    console.log(data);
    console.log("HELLO");
  },
  error: function(error) {

  }
});


var barChartData = {
  labels : myData.responseJSON.labels,
  datasets : [
    {
      fillColor : "rgba(220,220,220,0.5)",
      strokeColor : "rgba(220,220,220,0.8)",
      highlightFill: "rgba(220,220,220,0.75)",
      highlightStroke: "rgba(220,220,220,1)",
      data : myData.responsJSON.counts
    },
  ]
};
var ctx = document.getElementById('chart1').getContext('2d');

var myChart = new Chart(ctx).Bar(barChartData, {
  responsive: true
});
