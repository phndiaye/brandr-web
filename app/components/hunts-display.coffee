`import Ember from 'ember'`

HuntsDisplayComponent = Ember.Component.extend
  tagName: 'div'
  classNames: ['row', 'brndr-hunts-wrapper']
  enabledInfiniteScroll: false

  didInsertElement: ->
    _this = @
    @scheduleMasonry()
    $(window).on('scroll', ( ->
      _this.didScroll()
    ))

  scheduleMasonry: ( ->
    Ember.run.scheduleOnce('afterRender', @, @applyMasonry)
  ).observes('hunts.[]')

  applyMasonry: ->
    grid = @$()
    grid.imagesLoaded( ->
      msnry = grid.data('masonry')
      if msnry
        msnry.reloadItems()

        transitionDuration = msnry.options.transitionDuration
        msnry.options.transitionDuration = 0
        msnry.layout()

        msnry.options.transitionDuration = transitionDuration
      else
        grid.masonry({
          itemSelector: '.brndr-hunt',
        })
    )

  didScroll: ->
    _this = @
    if @get('enabledInfiniteScroll') && \
        ($(window).scrollTop() + $(window).height() == $(document).height())
      @sendAction('loadMoreHunts')

  actions:
    enableInfiniteScroll: ->
      @toggleProperty('enabledInfiniteScroll')
      @$('.load-more-hunts').hide()
      @didScroll()

`export default HuntsDisplayComponent`
