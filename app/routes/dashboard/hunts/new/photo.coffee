`import Ember from 'ember'`

DashboardHuntsNewPhotoRoute = Ember.Route.extend
  huntCreationStep: Ember.inject.service('hunt-creation-step')

  actions:
    goToHuntsSetting: ->
      @get('huntCreationStep').set('currentStep', 'hunt-items')
      @transitionTo('dashboard.hunts.new.hunt-items')

`export default DashboardHuntsNewPhotoRoute`
