`import Ember from 'ember'`

DashboardHuntShowRoute = Ember.Route.extend
  model: (params) ->
    @store.find('hunt', params.id)

  renderTemplate: ->
    @render('dashboard.hunt.show', { into: 'application', outlet: 'modal' })

`export default DashboardHuntShowRoute`
