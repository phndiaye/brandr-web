`import Ember from 'ember'`

HuntModalComponent = Ember.Component.extend
  didInsertElement: ->
    $('.brndr-hunt-itm-tltip').tooltipster()

  actions:
    closeHuntModal: ->
      @sendAction('action')

`export default HuntModalComponent`
