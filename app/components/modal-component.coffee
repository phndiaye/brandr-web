`import Ember from 'ember'`

ModalComponentComponent = Ember.Component.extend
  tagName: 'div'
  classNames: ['modal', 'brndr-modal']

  didInsertElement: ->
    $("##{@get('elementId')}").modal()

  willDestroyElement: ->
    $("##{@get('elementId')}").modal('hide')

`export default ModalComponentComponent`
