`import Ember from 'ember'`

DashboardHuntsLoginRoute = Ember.Route.extend
  renderTemplate: ->
    @render('dashboard.hunts.login', { into: 'application', outlet: 'modal' })

`export default DashboardHuntsLoginRoute`
