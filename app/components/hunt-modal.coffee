`import Ember from 'ember'`

HuntModalComponent = Ember.Component.extend
  didInsertElement: ->
    @set 'currentHuntItem', @get('model.huntItems.firstObject')
    $('.brndr-hunt-itm-tltip').tooltipster()

  actions:
    toggleHuntItem: (hunt) ->
      @set 'currentHuntItem', hunt

    closeHuntModal: ->
      @sendAction('action')

`export default HuntModalComponent`
