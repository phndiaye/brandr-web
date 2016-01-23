`import Ember from 'ember'`

DashboardHuntsNewController = Ember.Controller.extend
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
      _this = @
      @get('model').save().then( (cooc) ->
        _this.transitionToRoute('dashboard.hunts').then ( ->
          location.reload()
        )
      )

`export default DashboardHuntsNewController`
