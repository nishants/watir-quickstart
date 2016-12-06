app.directive("logout", function(userService, $state){
  return {
    link: function(scope, element){
      element.on("click",function(){
        userService.logout();
        $state.go("login");
      });
    }
  };
});