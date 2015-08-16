angular.module 'henry'
  .directive 'profileSmall', [() ->
    template: '<img src="images/profile-example.jpg" class="profile-small center-block"></img>'
  ]
  .directive 'profileLarge', [() ->
    template: '<img src="images/profile-example.jpg" class="profile-large"></img>'
  ]
