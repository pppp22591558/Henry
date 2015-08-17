angular.module 'henry'
  .directive 'profileSmall', [() ->
    template: '<img src="images/profile-example.jpg" class="profile-small"></img>'
  ]
  .directive 'profileLarge', [() ->
    template: '<img src="images/profile-example.jpg" class="profile-large"></img>'
  ]
  .directive 'post', [() ->
    restrict: 'E'
    templateUrl: 'client/components/views/post.ng.html'
  ]
