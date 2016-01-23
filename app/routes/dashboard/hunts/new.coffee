`import Ember from 'ember'`
`import InjectSessionMixin from 'brandr-web/mixins/inject-session'`
`import AuthenticatedRouteMixin from 'ember-simple-auth/mixins/authenticated-route-mixin'`

DashboardHuntsNewRoute = Ember.Route.extend InjectSessionMixin, AuthenticatedRouteMixin,
  model: ->
    @store.createRecord 'hunt', user: @get('currentUser')

  renderTemplate: ->
    @render('dashboard.hunts.new', { into: 'application', outlet: 'modal' })

`export default DashboardHuntsNewRoute`
