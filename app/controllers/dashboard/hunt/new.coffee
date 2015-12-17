`import Ember from 'ember'`

DashboardHuntNewController = Ember.Controller.extend
  selectOnClick: true

  actions:
    addHuntItem: (huntItem) ->
      @get('model.huntItems').pushObject(
        @store.createRecord('hunt-item', {
          top: huntItem.top,
          left: huntItem.left
        })
      )

    cancel: ->
      console.log 'cancel'

    createHunt: ->
      @get('model').save().then( ->
        console.log 'hunt created'
      )

`export default DashboardHuntNewController`
