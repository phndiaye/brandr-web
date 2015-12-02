`import Ember from 'ember'`
`import InjectSessionMixin from 'brandr-web/mixins/inject-session'`
`import LoginMixin from 'brandr-web/mixins/login'`

DashboardController = Ember.Controller.extend InjectSessionMixin, LoginMixin,
  actions:
    invalidateSession: ->
      @get('session').invalidate()

`export default DashboardController`
