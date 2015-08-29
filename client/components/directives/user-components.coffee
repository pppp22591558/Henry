angular.module 'henry'
  .directive 'profileSmall', [() ->
    template: '<img src="images/profile-example.jpg" class="profile-small"></img>'
  ]
  .directive 'profileLarge', [() ->
    template: '<img src="images/profile-example.jpg" class="profile-large"></img>'
  ]
  .directive 'post', [() ->
    restrict: 'E'
    templateUrl: 'client/components/views/user-components/post.ng.html'
  ]
  .directive 'userProfile', [() ->
    restrict: 'E'
    templateUrl: 'client/components/views/user-components/user_profile.ng.html'
  ]
  .directive 'userProfileContent', [() ->
    restrict: 'E'
    templateUrl: 'client/components/views/user-components/user_profile_content.ng.html'
  ]
  .directive 'experienceContent', [() ->
    restrict: 'E'
    templateUrl: 'client/components/views/user-components/experience-content.ng.html'
  ]
  .directive 'educationContent', [() ->
    restrict: 'E'
    templateUrl: 'client/components/views/user-components/education-content.ng.html'
  ]
  .directive 'skillsContent', [() ->
    restrict: 'E'
    templateUrl: 'client/components/views/user-components/skills-content.ng.html'
  ]
  .directive 'userToolkit', ['$window', ($window) ->
    restrict: 'E'
    templateUrl: 'client/components/views/user-components/user-toolkit.ng.html'
    link: (scope, elem) ->
      scope.getOffsetLeft = () ->
        offset = $('#user-content').offset().left + $('#user-content').width() - 30
        scope.style =
          'left' : offset
        return
      scope.getOffsetLeft()
      angular.element($window).bind 'resize', () ->
        scope.$apply () ->
          scope.getOffsetLeft()
        return
      elem.hover ()->
        elem.find('li.tool').toggleClass('slideLeft')
        return
      return
      elem.offset.left = 200
  ]
