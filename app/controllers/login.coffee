`import Ember from 'ember'`
`import LoginControllerMixin from 'simple-auth/mixins/login-controller-mixin'`

LoginController = Ember.Controller.extend(LoginControllerMixin, {
  authenticator: 'simple-auth-authenticator:oauth2-password-grant'

  actions:
    authenticate: ->
      credentials = {
        identification: @get('identification')
        password: @get('password')
      }
      @get('session').authenticate(@get('authenticator'), credentials)
})

`export default LoginController`
