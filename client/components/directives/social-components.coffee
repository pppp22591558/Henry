angular.module 'henry'
  .directive 'comment', [()->
    restrict: 'E'
    templateUrl: 'client/components/views/comment.ng.html'
  ]
