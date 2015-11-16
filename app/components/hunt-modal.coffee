`import Ember from 'ember'`

HuntModalComponent = Ember.Component.extend
  didInsertElement: ->
    $("##{@get('elementId')} div.brndr-hunt-img").append(
      "<a style='top: 50%; left: 38%' class='brndr-hunt-itm-tltip'>+</a>"
    )
    $('.brndr-hunt-itm-tltip').tooltipster()

  actions:
    closeHuntModal: ->
      @sendAction('action')

`export default HuntModalComponent`
