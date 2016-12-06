app.directive("noMobile", function(){
  return {
    restrict: "C",
    link: function(scope, element){
      element.addClass("hidden-md-down");
    }
  };
});
