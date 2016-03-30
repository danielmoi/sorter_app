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
