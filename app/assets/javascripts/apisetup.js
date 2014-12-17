// var apiCall = function(searchTerm, callback){
var dataSource;
var dataShowTemplate;

$(document).ready(function(){
  dataSource = $("#get-data").html();
  dataShowTemplate = Handlebars.compile(dataSource)
});





$(document).on("click", "#additem", function(){
  var brand = $("#brand").val();
  var url = "http://api.remix.bestbuy.com/v1/products(manufacturer=" + brand + "&salePrice%3E400)?format=json&show=name,salePrice,image&apiKey=t72cd4zb4ahwvx49ad3xqasu";
  // "http://api.remix.bestbuy.com/v1/products";
  // url += "(manufacturer=samsung&salePrice%3E100)";
  // url += "?format=json&show=name,salePrice,image&apiKey=t72cd4zb4ahwvx49ad3xqasu";

  $.ajax({
    url: url,
    type: "GET",
    dataType: "jsonp",
    cache: true,
    success: function(data) {
      // test to see what we are retrieving from the API
      // console.log("data", data);
      // testing if we can go a layer deeper with the API response
      // console.log(data.products);
      // put this data into an object and use handlebars to render it

      viewData = dataShowTemplate({Data: data.products});
      $("#content").html(viewData);
      console.log(data.products[0]);
    },
    error: function() {
      alert("Something went wrong here...");
    }
  });
});






// apiCall("tvs", function (tvData) {
//
//})