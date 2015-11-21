`import Ember from 'ember'`

HuntModalComponent = Ember.Component.extend
  currentHuntItem: ( ->
    @get('model.huntItems.firstObject')
  ).property('model.huntItems')

  didInsertElement: ->
    $('.brndr-hunt-itm-tltip').tooltipster()

  actions:
    toggleHuntItem: (hunt) ->
      @set 'currentHuntItem', hunt

    closeHuntModal: ->
      @sendAction('action')

`export default HuntModalComponent`
