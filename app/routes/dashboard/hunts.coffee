`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'ember-simple-auth/mixins/authenticated-route-mixin'`

DashboardHuntsRoute = Ember.Route.extend
  page: 1
  per_page: 15

  fetchNextPage: ->
    @store.query('hunt', { per_page: @get('per_page'), page: @get('page')})

  canLoadMore: ( ->
    if @modelFor('dashboard.hunts').get('meta.total') > @get('per_page')
      return true
    false
  ).property('model')

  model: ->
    @store.query('hunt', { per_page: @get('per_page'), page: @get('page')})

  setupController: (controller, model) ->
    controller.set 'canLoadMore', @get('canLoadMore')
    @_super(controller, model)

  actions:
    loadMoreHunts: ->
      @set('page', @get('page') + 1)
      _this = @
      if @get('canLoadMore')
        @store.query('hunt', { per_page: @get('per_page'), page: @get('page')}).then (results) ->
          _this.modelFor('dashboard.hunts').pushObjects(results.get('content'))



`export default DashboardHuntsRoute`
