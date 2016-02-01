`import Ember from 'ember'`
`import InjectSessionMixin from 'brandr-web/mixins/inject-session'`
`import LoginMixin from 'brandr-web/mixins/login'`

DashboardHuntsLoginController = Ember.Controller.extend InjectSessionMixin, LoginMixin,
  actions:
    authenticateUser: ->
      _this = @
      @authenticate().catch (e) ->
         _this.set 'errorOnLogin', e.error

`export default DashboardHuntsLoginController`
