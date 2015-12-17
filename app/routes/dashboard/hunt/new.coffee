`import Ember from 'ember'`
`import InjectSessionMixin from 'brandr-web/mixins/inject-session'`
`import AuthenticatedRouteMixin from 'ember-simple-auth/mixins/authenticated-route-mixin'`

DashboardHuntNewRoute = Ember.Route.extend InjectSessionMixin, AuthenticatedRouteMixin,
  model: ->
    @store.createRecord 'hunt', user: @get('currentUser')

  renderTemplate: ->
    @render('dashboard.hunt.new', { into: 'application', outlet: 'modal' })

`export default DashboardHuntNewRoute`
