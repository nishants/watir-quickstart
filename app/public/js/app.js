
var app = angular.module("app", ["ui.router", "ngStorage"]);

app.run(function ($rootScope, $state, $localStorage) {
  var onLocationChange = function (event, next, current) {
    if (!$localStorage.user && next.templateUrl != 'login.html') {
      $state.go('login');
    }
    $rootScope.user = $localStorage.user;
  };
  $rootScope.$on('$locationChangeStart', onLocationChange);

});

app.config(["$stateProvider", "$urlRouterProvider", function ($stateProvider, $urlRouterProvider) {

  $stateProvider
      .state("login", {
        url: "/login",
        templateUrl: "templates/login.html",
        controller: function ($scope, userService, $localStorage, $state) {
          var loginUser  = function (user) {
                $scope.error = null;
                $scope.user = user;
                $localStorage.user = user;
                $state.go("dashboard");
              },
              loginError = function (error) {
                $scope.error = error;
              };

          $scope.login = function(){
            userService.login($scope.form).then(loginUser, loginError);
          };

          $scope.form = {
            username: null,
            password: null
          }
        }
      }).state("dashboard", {
        url: "/",
        templateUrl: "templates/dashboard.html",
        controller: function ($scope, userService) {
        }
      })
      .state("users", {
        url: "/users",
        templateUrl: "templates/users.html",
        controller: "accountsController"
      })
      .state("users.create", {
        url: "/create",
        templateUrl: "templates/users/create.html",
        controller: function ($scope, userService) {
        }
      })
      .state("users.confirm", {
        url: "/confirm",
        templateUrl: "templates/users/confirm.html",
        controller: function ($scope, userService) {
        }
      });
}]);




