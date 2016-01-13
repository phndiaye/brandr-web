`import Ember from 'ember'`

DashboardRoute = Ember.Route.extend
  page: 1
  per_page: 15

  model: ->
    @store.query('hunt', { per_page: @get('per_page'), page: @get('page')})

  fetchNextPage: ->
    @store.query('hunt', { per_page: @get('per_page'), page: @get('page')})

  canLoadMore: ( ->
    if @get('page') < @modelFor('dashboard').get('meta.pages')
      return true
    false
  ).property()

  actions:
    openHuntNewModal: ->
      @render('dashboard/hunt/new', {
        into: 'dashboard',
        outlet: 'modal',
        model: @store.createRecord('hunt')
        controller: 'dashboard.hunt.new'
      })

    loadMoreHunts: ->
      @set('page', @get('page') + 1)
      _this = @
      if @get('canLoadMore')
        @store.query('hunt', { per_page: @get('per_page'), page: @get('page')}).then (results) ->
          _this.modelFor('dashboard').pushObjects(results.get('content'))

`export default DashboardRoute`
