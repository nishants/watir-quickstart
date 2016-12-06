app.directive("mobileOnly", function(){
  return {
    restrict: "C",
    link: function(scope, element){
      element.addClass("hidden-lg-up");
    }
  };
});
