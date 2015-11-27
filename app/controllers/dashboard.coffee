`import Ember from 'ember'`
`import InjectSessionMixin from 'brandr-web/mixins/inject-session'`

DashboardController = Ember.Controller.extend InjectSessionMixin,
  actions:
    invalidateSession: ->
      @get('session').invalidate()

`export default DashboardController`
