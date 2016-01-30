`import Ember from 'ember'`

DashboardHuntsRegisterRoute = Ember.Route.extend
  renderTemplate: ->
    @render('dashboard.hunts.register', { into: 'application', outlet: 'modal' })

`export default DashboardHuntsRegisterRoute`
