`import Ember from 'ember'`
`import InjectSessionMixin from 'brandr-web/mixins/inject-session'`
`import LoginMixin from 'brandr-web/mixins/login'`

DashboardController = Ember.Controller.extend InjectSessionMixin, LoginMixin,
  sortBy: ['createdAt:desc']
  sortedHunts: Ember.computed.sort('model', 'sortBy')

  hunts: ( ->
    this.get('sortedHunts').filter (record) ->
      !record.get('isNew')
  ).property('sortedHunts')

  actions:
    invalidateSession: ->
      @get('session').invalidate()

`export default DashboardController`
