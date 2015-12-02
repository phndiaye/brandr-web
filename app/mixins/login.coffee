`import Ember from 'ember'`

LoginMixin = Ember.Mixin.create
  authenticator: 'authenticator:oauth2'

  actions:
    authenticate: ->
      self = @
      @get('session').authenticate(
        @get('authenticator'),
        @get('identification'),
        @get('password')
      )

`export default LoginMixin`
