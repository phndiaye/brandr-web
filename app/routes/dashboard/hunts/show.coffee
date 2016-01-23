`import Ember from 'ember'`

DashboardHuntsShowRoute = Ember.Route.extend
  model: (params) ->
    @store.find('hunt', params.id)

  renderTemplate: ->
    @render('dashboard.hunts.show', { into: 'application', outlet: 'modal' })

`export default DashboardHuntsShowRoute`
