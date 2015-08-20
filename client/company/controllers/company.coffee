angular.module 'henry'
  .controller 'companyCtrl', ['$stateParams', ($stateParams) ->
    company = this
    company.companyId = $stateParams.id
  ]
