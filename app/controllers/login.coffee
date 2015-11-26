`import Ember from 'ember'`
`import InjectSessionMixin from 'brandr-web/mixins/inject-session'`

LoginController = Ember.Controller.extend InjectSessionMixin,
  authenticator: 'authenticator:oauth2'

  actions:
    authenticate: ->
      self = @
      @get('session').authenticate(
        @get('authenticator'),
        @get('identification'),
        @get('password')
      ).then( ->
        self.transitionToRoute('dashboard.index')
      ).catch( (error) ->
        console.log error
      )

`export default LoginController`
