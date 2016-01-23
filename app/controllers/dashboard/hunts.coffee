`import Ember from 'ember'`

DashboardHuntsController = Ember.Controller.extend
  sortBy: ['createdAt:desc']
  sortedHunts: Ember.computed.sort('model', 'sortBy')

  hunts: ( ->
    this.get('sortedHunts').filter (record) ->
      !record.get('isNew')
  ).property('sortedHunts')

`export default DashboardHuntsController`
