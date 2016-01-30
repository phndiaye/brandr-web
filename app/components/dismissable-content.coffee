`import Ember from 'ember'`

DismissableContentComponent = Ember.Component.extend
  tagName: 'div'
  classNames: ['dismissable-content', 'row']

  actions:
    dismissContent: ->
      @$().slideUp(200)

`export default DismissableContentComponent`
