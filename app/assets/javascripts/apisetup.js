// var apiCall = function(searchTerm, callback){

$(document).on("click", "#additem", function(){
  var url = "http://api.remix.bestbuy.com/v1/products(manufacturer=samsung&salePrice%3E100)?format=json&show=name,salePrice,image&apiKey=t72cd4zb4ahwvx49ad3xqasu"
  // "http://api.remix.bestbuy.com/v1/products";
  // url += "(manufacturer=samsung&salePrice%3E100)";
  // url += "?format=json&show=name,salePrice,image&apiKey=t72cd4zb4ahwvx49ad3xqasu";
  $.ajax({
    url: url,
    type: "GET",
    dataType: "jsonp",
    cache: true,
    success: function(data) {
      console.log("data", data);
      $.each(data.products.name);

      // callback(data);
      // var html = productShowTemplate({productData: data});
      // $("#content").html(html);
    },
    error: function() {
      alert("Something went wrong here...");
    }
  });
});




// apiCall("tvs", function (tvData) {
//
//})