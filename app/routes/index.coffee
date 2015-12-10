`import Ember from 'ember'`

IndexRoute = Ember.Route.extend
  renderTemplate: ->
    @render('index', { into: 'application', outlet: 'index' })

`export default IndexRoute`
