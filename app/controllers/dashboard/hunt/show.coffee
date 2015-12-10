`import Ember from 'ember'`

DashboardHuntShowController = Ember.Controller.extend
  currentHuntItem: ( ->
    @get('model.huntItems.firstObject')
  ).property('model.huntItems')

  didInsertElement: ->
    $('.brndr-hunt-itm-tltip').tooltipster()

  actions:
    toggleHuntItem: (hunt) ->
      @set 'currentHuntItem', hunt

`export default DashboardHuntShowController`
