evergreen.controller('ResourceCtrl',
  ['$scope', 'Restangular', 'resources', 'resourceService',
  function($scope, Restangular, resources, resourceService) {

    $scope.init = function() {
      resourceService.setResources(resources);
      $scope.setResourceVars();
    };

    $scope.toggleSort = function(column) {
      if (column === $scope.sort) {
        $scope.sortDescending ^= true;
      } else {
        $scope.sort = column;
        $scope.sortDescending = false;
      };
    };

    $scope.sortIcon = function(column) {
      if ($scope.sort === column) {
        return $scope.sortDescending
          ? 'fa fa-chevron-up fa-1x'
          : 'fa fa-chevron-down fa-1x';
      };
    };

    $scope.setResourceVars = function() {
      $scope.resources = resourceService.getResources();
    };

    $scope.init();

  }]);