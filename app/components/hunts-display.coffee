`import Ember from 'ember'`

HuntsDisplayComponent = Ember.Component.extend
  tagName: 'div'
  classNames: ['row', 'brndr-hunts-wrapper']

  didInsertElement: ->
    grid = @$().masonry({
      itemSelector: '.brndr-hunt'
    })
    grid.imagesLoaded().done( ->
      grid.masonry('layout')
    )

`export default HuntsDisplayComponent`
