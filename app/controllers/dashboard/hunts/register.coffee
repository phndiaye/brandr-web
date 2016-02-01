`import Ember from 'ember'`
`import LoginMixin from 'brandr-web/mixins/login'`
`import InjectSessionMixin from 'brandr-web/mixins/inject-session'`

DashboardHuntsRegisterController = Ember.Controller.extend InjectSessionMixin, LoginMixin,
  actions:
    registerUser: ->
      _this = @

      @model.save().then( (result) ->
        _this.set 'identification', _this.model.get('email')
        _this.set 'password', _this.model.get('password')
        _this.authenticate()
      ).catch (e) ->
        e.errors.map (err) ->
          _this.set(
            "errorOn#{err.detail.split('.')[1].capitalize()}",
            { present: true, detail: err.detail, class: "has-feedback has-error" }
          )
        _this.set 'errors', e.errors

`export default DashboardHuntsRegisterController`
