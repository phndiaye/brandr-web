`import Ember from 'ember'`
`import InjectSessionMixin from 'brandr-web/mixins/inject-session'`

LoginController = Ember.Controller.extend InjectSessionMixin,
  authenticator: 'authenticator:oauth2'

  actions:
    authenticate: ->
      credentials = {
        identification: @get('identification')
        password: @get('password')
      }
      @get('session').authenticate(@get('authenticator'), credentials)

`export default LoginController`
