`import Ember from 'ember'`

DashboardHuntNewController = Ember.Controller.extend
  selectOnClick: true
  back: 'dashboard'

  actions:
    addHuntItem: (huntItem) ->
      @get('model.huntItems').pushObject(
        @store.createRecord('hunt-item', {
          top: huntItem.top,
          left: huntItem.left
        })
      )

    cancel: ->
      @send('closeModal', @get('back'))

    createHunt: ->
      @get('model').save().then( ->
        console.log 'hunt created'
      )

`export default DashboardHuntNewController`
