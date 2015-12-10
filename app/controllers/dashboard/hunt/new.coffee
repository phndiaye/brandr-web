`import Ember from 'ember'`

DashboardHuntNewController = Ember.Controller.extend
  selectOnClick: true

  actions:
    huntImageLoaded: ->
      @set 'selectOnClick', false

    cancel: ->
      console.log 'cancel'

    createHunt: ->
      console.log 'createHunt'

`export default DashboardHuntNewController`
