`import Ember from 'ember'`

ModalComponentComponent = Ember.Component.extend
  tagName: 'div'
  classNames: ['modal', 'brndr-modal']

  click: (e) ->
    ember_id = @get('elementId')
    if !$(@).is(e.target) && $(@).has(e.target).length == 0 && $("##{ember_id}").has(e.target).length == 0
      @sendAction('action', @get('back'))

  didInsertElement: ->
    $("##{@get('elementId')}").modal()

  willDestroyElement: ->
    $("##{@get('elementId')}").modal('hide')

`export default ModalComponentComponent`
