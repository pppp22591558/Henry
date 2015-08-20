angular.module 'henry'
  .directive 'searchBar', [() ->
    restrict: 'E'
    templateUrl: 'client/components/views/control-components/search_bar.ng.html'
  ]
  .directive 'tabs', [() ->
    restrict: 'A'
    controller: ['$scope', ($scope) ->
      $scope.activeTab = 1
      return
    ]
  ]
  .directive 'tab', [() ->
    restrict: 'A'
    require: '^tabs'
    link: (scope, elem, attrs, tabs) ->
      scope.$watch 'activeTab', (n, o) ->
        if parseInt(attrs.tab) == scope.activeTab
          elem.addClass('selected')
        else
          elem.removeClass('selected')
        return
      return
  ]
