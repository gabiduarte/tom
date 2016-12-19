describe('PanelController', function(){
  var $scope, $controller, $rootScope, $cookies, $location, UserService, PanelService, dummyTrends;

  // Set the module
  beforeEach(module('trendOMeterApp'));

  // Add globals for any test
  beforeEach(inject(function(_$rootScope_, _$controller_, _DuelService_, _$cookies_, _$location_, _PanelService_, _UserService_) {
    $controller = _$controller_;
    $rootScope = _$rootScope_;
    $scope = $rootScope.$new();
    $cookies = _$cookies_;
    $location = _$location_;
    PanelService = _PanelService_;
    UserService = _UserService_;

    dummyTrends = [
      {
        "name":"Personalização",
        "count":11
      },
      {
        "name":"Computação Cognitiva",
        "count":11
      },
      {
        "name":"Maternidade e Paternidade na Carreira",
        "count":11
      },
      {
        "name":"Felicidade e Performance",
        "count":10
      }
    ];

    spyOn(PanelService, "getTrends").and.returnValue({
      then: function(fn) {
        return fn({status: 200, data: dummyTrends});
      }
    });
  }));

  describe('PanelController.users', function(){
    it('should go to user register screen', function(){
      $controller('PanelController', {$scope: $scope});
      $scope.users();
      expect($location.path()).toEqual('/user');
    });
  });

  it('should show user form', function() {
    $controller('PanelController', {$scope: $scope});
    expect($scope.showUserForm()).toEqual(true);
  });

  it('should hide user form if user submit the form', function() {
    UserService.setCompleted();
    $controller('PanelController', {$scope: $scope});
    expect($scope.showUserForm()).toEqual(false);
  });

  it('should get trends of PanelService', function() {
    $controller('PanelController', {$scope: $scope});
    expect($scope.trendList).toEqual(dummyTrends);
  });

  it('should split trends in two collumns', function() {
    $controller('PanelController', {$scope: $scope});
    expect($scope.leftTrends).toEqual([dummyTrends[0], dummyTrends[1]]);
    expect($scope.rightTrends).toEqual([dummyTrends[2], dummyTrends[3]]);
  });
});
