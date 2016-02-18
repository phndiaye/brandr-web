`import Ember from 'ember'`

DashboardHuntsNewHuntItemsController = Ember.Controller.extend
  noHuntItems: ( ->
    @model.get('huntItems.length') == 0
  ).property('model.huntItems.[]')

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
