`import Ember from 'ember'`

DashboardHuntsRoute = Ember.Route.extend
  page: 1
  per_page: 15

  fetchNextPage: ->
    @store.query('hunt', { per_page: @get('per_page'), page: @get('page')})

  canLoadMore: ( ->
    if @get('page') < @modelFor('dashboard.hunts').get('meta.pages')
      return true
    false
  ).property()

  model: ->
    @store.query('hunt', { per_page: @get('per_page'), page: @get('page')})

  actions:
    loadMoreHunts: ->
      @set('page', @get('page') + 1)
      _this = @
      if @get('canLoadMore')
        @store.query('hunt', { per_page: @get('per_page'), page: @get('page')}).then (results) ->
          _this.modelFor('dashboard.hunts').pushObjects(results.get('content'))



`export default DashboardHuntsRoute`
