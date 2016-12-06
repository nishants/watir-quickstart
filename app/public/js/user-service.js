app.service("userService", function ($http, $q, $localStorage) {
  var users = $http.get("server/users.json").then(function (response) {
    return response.data;
  });

  var service = {
    current: null,
    create: function(user){
      var deferred = $q.defer();
      $localStorage.user.data.active_users.push(user);
      deferred.resolve($localStorage.user.data);
      return deferred.promise;
    },
    logout: function(){
      $localStorage.user = null;
    },
    login: function (form) {
      var deferred = $q.defer();
      users.then(function (users) {
        var found = users.filter(function (user) {
          return form.username == user.id && form.password == user.password
        });

        service.current = found[0];
        $localStorage.user = found[0];
        service.current ? deferred.resolve(service.current) : deferred.reject({message: "Incorrect username/password."});
      });
      return deferred.promise;
    }
  };
  return service;
});