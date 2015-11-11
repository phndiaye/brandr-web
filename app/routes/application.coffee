`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend
  actions:
    openModal: (modal, model) ->
      @render(modal, {
        into: 'application',
        outlet: 'modal',
        model: model
      })

    closeModal: ->
      @disconnectOutlet({ outlet: 'modal', parentView: 'application' })

`export default ApplicationRoute`
