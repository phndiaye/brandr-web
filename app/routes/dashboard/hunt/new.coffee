`import Ember from 'ember'`

DashboardHuntNewRoute = Ember.Route.extend
  renderTemplate: ->
    @render('dashboard.hunt.new', { into: 'application', outlet: 'modal' })

`export default DashboardHuntNewRoute`
