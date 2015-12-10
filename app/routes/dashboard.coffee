`import Ember from 'ember'`

DashboardRoute = Ember.Route.extend
  model: ->
    @store.findAll('hunt')

  actions:
    goToHunt: (hunt) ->
      @transitionTo('dashboard.hunt.show', hunt)

    openHuntNewModal: ->
      @render('dashboard/hunt/new', {
        into: 'dashboard',
        outlet: 'modal',
        model: @store.createRecord('hunt')
        controller: 'dashboard.hunt.new'
      })

`export default DashboardRoute`
