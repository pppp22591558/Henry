angular.module 'henry'
  .config ['$stateProvider', '$urlRouterProvider', '$locationProvider',($stateProvider, $urlRouterProvider, $locationProvider) ->
    $locationProvider.html5Mode true
    $stateProvider
      .state 'explore',
        url: '/explore'
        templateUrl: 'client/explore/views/explore-index.ng.html'
        controller: 'exploreCtrl'
        controllerAs: 'explore'
      .state 'profile',
        url: '/profile'
        templateUrl: 'client/profile/views/profile-index.ng.html'
        controller: 'profileCtrl'
        controllerAs: 'profile'
      .state 'jobCart',
        url: '/jobCart'
        templateUrl: 'client/job_cart/views/jobCart-index.ng.html'
        controller: 'jobCartCtrl'
        controllerAs: 'jobCart'
    $urlRouterProvider.otherwise('/explore')
  ]
