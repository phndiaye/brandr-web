`import Ember from 'ember'`
`import Hunt from 'brandr-web/models/hunt'`
`import UnauthenticatedRouteMixin from 'ember-simple-auth/mixins/authenticated-route-mixin'`

DashboardIndexRoute = Ember.Route.extend
  model: ->
    @store.findAll('hunt')

  setupController: (controller, model) ->
    controller.set 'hunts', model

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

`export default DashboardIndexRoute`
