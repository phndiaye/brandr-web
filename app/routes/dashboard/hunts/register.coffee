`import Ember from 'ember'`

DashboardHuntsRegisterRoute = Ember.Route.extend
  model: ->
    @store.createRecord 'user'

  renderTemplate: ->
    @render('dashboard.hunts.register', { into: 'application', outlet: 'modal' })

`export default DashboardHuntsRegisterRoute`
