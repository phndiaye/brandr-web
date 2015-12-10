`import Ember from 'ember'`

DashboardRoute = Ember.Route.extend
  model: ->
    @store.findAll('hunt')

  actions:
    openHuntModal: (modal, model) ->
      router = @router

      @controller.set '_previousUrl', router.router.generate(router.currentRouteName)
      @send('openModal', modal, model)
      router.router.updateURL(router.router.generate('dashboard.hunt', model.id))

    closeHuntModal: ->
      router = @router
      router.router.updateURL(@controller.get('_previousUrl'))
      @send('closeModal')

    openHuntNewModal: ->
      @render('dashboard/hunt/new', {
        into: 'dashboard',
        outlet: 'modal',
        model: @store.createRecord('hunt')
        controller: 'dashboard.hunt.new'
      })

`export default DashboardRoute`
