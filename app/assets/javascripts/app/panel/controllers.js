trendOMeterApp.controller('PanelController', function($scope, PanelService, UserService, $location, $timeout) {
  $scope.loading = true; 
  $scope.leftTrends = [];
  $scope.rightTrends = [];

  function addPosition(data){
    var array = [];
    data.map(function(item){
      item['position'] = data.indexOf(item) + 1;
      item['false'] = true;
      array.push(item);

      $timeout(function() {
        item['show'] = true;
      }, 200 * item.position);
    });
    return array;
  }
  function init() {
    PanelService.getTrends().then(function(response) {
      $scope.loading = false;
      var data = addPosition(response.data);
      $scope.trendList = data;
      $scope.totalTrends = $scope.trendList.length;
      for(var i=0; i < $scope.totalTrends; i++) {
        if(i < $scope.totalTrends / 2) {
          $scope.leftTrends.push($scope.trendList[i]);
        } else {
          $scope.rightTrends.push($scope.trendList[i]);
        }
      }
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
