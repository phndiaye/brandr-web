`import Ember from 'ember'`

getOptions = (keys) ->
  properties = this.getProperties(keys)

  Object.keys(properties).forEach( (key) ->
    if properties[key] == "null"
      properties[key] = null

    if properties[key] == undefined
      delete properties[key]
  )

  return properties;

MasonryGridComponent = Ember.Component.extend
  classNames: ['masonry-grid']

  options: null
  items: null

  masonryInitialized: false

  initializeMasonry: Ember.on('didInsertElement', ->
    @set('options', getOptions.call(@, [
      'containerStyle',
      'columnWidth',
      'gutter',
      'hiddenStyle',
      'isFitWidth',
      'isInitLayout',
      'isOriginLeft',
      'isOriginTop',
      'isResizeBound',
      'itemSelector',
      'stamp',
      'transitionDuration',
      'visibleStyle'
    ]))

    @layoutMasonry()
  ),

  layoutMasonry: Ember.observer('items.[]', ->
    _this = this

    imagesLoaded(this.$(), ->
      if _this.get('masonryInitialized')
        _this.$().masonry('destroy')

      _this.$().masonry(_this.get('options'))
      _this.set('masonryInitialized', true)
    )
  )

`export default MasonryGridComponent`
