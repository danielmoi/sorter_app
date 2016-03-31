var requestInfo = function () {
  var myData = $.ajax({
    method: 'GET',
    url: 'graphs/data_current_user',
    dataType: 'json',
    success: function(data) {
      console.log(data);
      console.log("ajax success");
      displayGraph( data );
    },
    error: function(error) {
      console.log("ajax error");

    }
  });

};
