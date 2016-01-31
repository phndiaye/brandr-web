`import Ember from 'ember'`

DashboardHuntsRegisterController = Ember.Controller.extend
  actions:
    registerUser: ->
      _this = @
      @model.save().then( ->
        console.log 'user created'
      ).catch (e) ->
        e.errors.map (err) ->
          _this.set(
            "errorOn#{err.detail.split('.')[1].capitalize()}",
            { present: true, detail: err.detail, class: "has-feedback has-error" }
          )
        _this.set 'errors', e.errors

`export default DashboardHuntsRegisterController`
