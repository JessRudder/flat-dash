$(function(){
  setTimeout(function() {

    var svg = d3.select('.bubble-chart')
      .append('svg')
      .attr('width', 650)
      .attr('height', 650);

    var bubble = d3.layout.pack()
        .sort(null)
        .size([630, 650])
        .padding(1.5);

    var color = d3.scale.category20b();

    function animate(data) {

      var treeLikeData = {"children": data};

      var bubbleData = bubble.nodes(treeLikeData)
        .filter(function(d) { return !d.children; });

      var node = svg.selectAll('.node')
        .data(bubbleData, function(d) { return d.name; });

      var enter = node.enter().append('g')
        .attr('class', 'node')
        .attr('transform', function(d) {return 'translate(' + d.x + ',' + d.y + ')'; });
      enter.append('circle')
        .style('fill', function(d) { return color(d.name); })
        .attr('r' , 0);
      enter.append('text')
        .style('opacity', 0)
        .style('fill', 'black')
        .style('text-anchor', 'middle')
        .text(function(d) { return d.name; });

      var update = node.transition().attr('transform', function(d) {return 'translate(' + d.x + ',' + d.y + ')'; });

      update.select('circle')
          .attr('r' , function(d) { return d.r; });
      update.select('text')
          .style('opacity', 1);

      var exit = node.exit()
        .transition()
          .remove();
      exit.select('circle').attr('r', 0);
      exit.select('text').style('opacity', 0);
    }

    function fetchData() {
      $.ajax({
        url: URL,
        type: "GET",
        dataType: "json",
        success: function(data){
          animate(data);
        }
      });
      setTimeout(fetchData, 1000);
    }
    fetchData();


  }, 200);
});