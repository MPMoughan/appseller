var testing = function(searchTerm, callback){

  var url = "http://api.remix.bestbuy.com/v1/products";
  url += "(manufacturer=samsung&salePrice%3E100)";
  url += "?format=json&show=name,salePrice,image&apiKey=t72cd4zb4ahwvx49ad3xqasu"
  $.ajax({
    url: url,
    type: "GET",
    dataType: "jsonp",
    cache: true,
    success: function(data) {
      console.log("data", data);
      callback(data);
      // var html = productShowTemplate({productData: data});
      // $("#content").html(html);
    },
    error: function() {
      alert("Something went wrong here...");
    }
  });
};


// testing("tvs", function (tvData) {
//
//})