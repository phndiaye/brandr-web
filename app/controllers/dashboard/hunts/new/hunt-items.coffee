`import Ember from 'ember'`

DashboardHuntsNewHuntItemsController = Ember.Controller.extend
  actions:
    addHuntItem: (huntItem) ->
      @get('model.huntItems').pushObject(
        @store.createRecord('hunt-item', {
          top: huntItem.top,
          left: huntItem.left
        })
      )

    createHunt: ->
      _this = @
      @get('model').save().then( (cooc) ->
        _this.transitionToRoute('dashboard.hunts').then ( ->
          location.reload()
        )
      )

`export default DashboardHuntsNewHuntItemsController`
