`import Ember from 'ember'`

DashboardHuntsShowController = Ember.Controller.extend
  currentHuntItem: ( ->
    @get('model.huntItems.firstObject')
  ).property('model.huntItems')

`export default DashboardHuntsShowController`
