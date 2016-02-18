`import Ember from 'ember'`
`import InjectSessionMixin from 'brandr-web/mixins/inject-session'`
`import AuthenticatedRouteMixin from 'ember-simple-auth/mixins/authenticated-route-mixin'`

DashboardHuntsNewRoute = Ember.Route.extend InjectSessionMixin, AuthenticatedRouteMixin,
  back: 'dashboard'

  model: ->
    @store.createRecord 'hunt', user: @get('currentUser')

  renderTemplate: ->
    @render('dashboard.hunts.new', { into: 'application', outlet: 'modal' })

  actions:
    cancel: ->
      @send('closeModal', @get('back'))

`export default DashboardHuntsNewRoute`
