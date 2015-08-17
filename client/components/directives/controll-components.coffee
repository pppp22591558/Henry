angular.module 'henry'
  .directive 'searchBar', [() ->
    restrict: 'E'
    templateUrl: 'client/components/views/search_bar.ng.html'
  ]
