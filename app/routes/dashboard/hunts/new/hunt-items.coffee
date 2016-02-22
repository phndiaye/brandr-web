`import Ember from 'ember'`

DashboardHuntsNewHuntItemsRoute = Ember.Route.extend
  huntCreationStep: Ember.inject.service('hunt-creation-step')

  beforeModel: ->
    unless @modelFor('dashboard.hunts.new').get('image')
      @transitionTo('dashboard.hunts.new.photo')

`export default DashboardHuntsNewHuntItemsRoute`
