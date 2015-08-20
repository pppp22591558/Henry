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
      .state 'company',
        url: '/company'
        templateUrl: 'client/company/views/company.ng.html'
        abstract: true
      .state 'company.info',
        url: '/:id'
        templateUrl: 'client/company/views/company_info.ng.html'
        controller: 'companyCtrl'
        controllerAs: 'company'

    $urlRouterProvider.otherwise('/explore')
  ]
