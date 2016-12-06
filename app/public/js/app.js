
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
        controller: function ($scope, $state, userService) {
          var form = {
            options: {
              roles: [{name: "admin"},{name: "guest"},{name: "moderator"}]
            },
            values: {
              username        : null,
              email           : null,
              full_name       : null,
              role            : null,
              terms_accepted  : false,
            },
            errors: {
              username    :   null,
              email       :   null,
              full_name   :   null,
              role        :   null,
              terms_accepted: null,
            },
            reset: function(){
              form.errors.username        = null;
              form.errors.email           = null;
              form.errors.full_name       = null;
              form.errors.role            = null;
              form.errors.terms_accepted  = null;

              form.values.username        = null;
              form.values.email           = null;
              form.values.full_name       = null;
              form.values.role            = null;
              form.values.terms_accepted  = false;
            },
            hasErrors: function(){
              form.errors.username    = (!form.values.username  && "Can't proceed without username" )       || null;
              form.errors.email       = (!form.values.email     && "Can't proceed without email" )          || null;
              form.errors.role        = (!form.values.role      && "Can't proceed without assigning role" ) || null;
              return form.errors.username || form.errors.email || form.errors.role;
            },
            getValue: function(){
              return [form.values.full_name, form.values.email, ""];
            },
            submit: function(){
              userService.create(form.getValue()).then(function(data){
                form.reset();
                $scope.user.data = data;
              });
              $state.go("users");
            }
            ,save: function(){
              form.hasErrors() ? "" : $state.go("users.confirm");
            }
          };
          $scope.form = form;
        }
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




