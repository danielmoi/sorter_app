$.ajax({
  type: "GET",
  contentType: "application/json; charset=utf-8",
  url: 'graphs/data2',
  dataType: 'json',
  success: function(data) {
    draw(data);
  },
  error: function(result) {
    error(result);
  }
});

function draw(data) {
  var color = d3.scale.category20b();
  var width = 420,
    barHeight = 20;

  var x = d3.scale.linear()
    .range([0, width * 0.9]) // make it a bit less wide
    .domain([0, d3.max(data)]);

  var chart = d3.select("#graph")
    .attr("width", width)
    .attr("height", barHeight * data.length);

  var bar = chart.selectAll("g") // 'g' is a group element used as container
    .data(data)
    .enter()
    .append("g")
    .attr("transform", function(d, i) {
      return "translate(0," + i * barHeight + ")";
    });

  bar.append("rect")
    .attr("width", x)
    .attr("height", barHeight - 1)
    .style("fill", function(d) {
      return color(d);
    });

  bar.append("text")
    .attr("x", function(d) {
      return x(d) + 10;
    })
    .attr("y", barHeight / 2)
    .attr("dy", ".35em")
    .style("fill", "black")
    .text(function(d) {
      return d;
    });
}

function error(result) {
  console.log("error: " + result);
}
