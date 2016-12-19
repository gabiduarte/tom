trendOMeterApp.controller('PanelController', function($scope, PanelService, UserService, $location, $timeout, $interval) {
  $scope.loading = true; 
  $scope.leftTrends = [];
  $scope.rightTrends = [];

  function addPosition(data) {
    data.map(function(item) {
      item.position = data.indexOf(item) + 1;
    });
    return data;
  }

  function animate(data) {
    data.map(function(item) {
      $timeout(function() {
        item.show = true;
      }, 200 * item.position);
    });
    return data;
  }

  function distribute(data) {
    $scope.totalTrends = data.length;
    $scope.leftTrends = [];
    $scope.rightTrends = [];
    for(var i=0; i < $scope.totalTrends; i++) {
      if(i < $scope.totalTrends / 2) {
        $scope.leftTrends.push(data[i]);
      } else {
        $scope.rightTrends.push(data[i]);
      }
    }
  }

  function init() {
    PanelService.getTrends().then(function(response) {
      $scope.loading = false;
      var data = response.data;

      addPosition(data);
      animate(data);
      distribute(data);

      $scope.trendList = data;

      $interval(function() { refresh() }, 5000);
    });
  }

  function refresh() {
    PanelService.getTrends().then(function(response) {
      var data = response.data;
      addPosition(data);

      for(var i=0; i < $scope.totalTrends; i++) {
        if(data[i].name != $scope.trendList[i].name) {
          $scope.trendList[i].changing = true;
          data[i].changing = true;
        }
      }

      $timeout(function() {
        data.map(function(item) {
          item.show = true;
        });
        distribute(data);

        // Wait to rende before show text again
        $timeout(function() {
          data.map(function(item) {
            item.changing = false;
          });
        }, 100);

        $scope.trendList = data;
      }, 1000);
    });
  }

  $scope.showUserForm = function() {
    return !UserService.isCompleted();
  }
  $scope.users = function() {
    $location.path('/user');
  }

  init();
});
