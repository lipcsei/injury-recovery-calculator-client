'use strict'

angular.module 'injuryRecoveryCalculatorApp'
.controller 'MainCtrl', ($scope, $http, $log) ->
  $scope.mytime = new Date()

  $scope.hstep = 1
  $scope.mstep = 15

  $scope.options = {
    hstep: [1, 2, 3],
    mstep: [1, 5, 10, 15, 25, 30]
  }

  $scope.ismeridian = true

  $scope.toggleMode = ()->
    $scope.ismeridian = !$scope.ismeridian


  $scope.changed = () ->
    $log.log($scope.mytime);


  $scope.open = ($event) ->
    $event.preventDefault()
    $event.stopPropagation()
    $scope.opened = true


  $scope.dateOptions =
    formatYear: 'yy'
    startingDay: 1


  $scope.format = 'dd-MMMM-yyyy'

  $scope.send = () ->
    $http.post('http://localhost/calc/web/app_dev.php/api/calc', {date: $scope.mytime, hours: $scope.hours})
    .success (data) ->
      $log.log data
      $scope.result = data;
    .error (data) ->
      $log.error(data)


