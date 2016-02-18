`import Ember from 'ember'`

HuntAreaComponent = Ember.Component.extend
  huntCreationStep: Ember.inject.service('hunt-creation-step')
  selectOnClick: true

  findPosition: (element) ->
    xPosition = 0
    yPosition = 0

    if element.offsetParent
      while element
        xPosition += (element.offsetLeft - element.scrollLeft + element.clientLeft)
        yPosition += (element.offsetTop - element.scrollTop + element.clientTop)
        element = element.offsetParent

    return { x: xPosition, y: yPosition }

  click: (e) ->
    console.log e.target.tagName.toLowerCase()
    console.log @get('huntCreationStep').get('currentStep')
    if e.target.tagName.toLowerCase() == 'img' && @get('huntCreationStep').get('currentStep') == 'hunt-items'
      console.log @get('selectOnClick')
      imagePosition = @findPosition(e.currentTarget)
      left = ((e.clientX - imagePosition.x) / e.target.width) * 100
      top = ((e.clientY - imagePosition.y) / e.target.height) * 100

      huntItem = "<a class='brndr-hunt-itm-tltip' style='top: #{top}%; left: #{left}%'>+</a>"
      $(huntItem).insertAfter(e.target)
      $('.brndr-hunt-itm-tltip').tooltipster({
        multiple: true
      })

      @sendAction('action', { top: top, left: left })

  actions:
    huntImageLoaded: (file) ->
      @set 'model.image', file
      @set 'selectOnClick', false

`export default HuntAreaComponent`
