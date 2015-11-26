`import Ember from 'ember'`

initialize = ({registry}) ->
  service = Ember.ObjectProxy.create(isServiceFactory: true)
  registry.register('service:current-user', service, { instantiate: false, singleton: true})
  registry.injection('route', 'currentUser', 'service:current-user')
  registry.injection('controller', 'currentUser', 'service:current-user')
  registry.injection('component', 'currentUser', 'service:current-user')

CurrentUserInitializer =
  name: 'current-user'
  initialize: initialize

`export {initialize}`
`export default CurrentUserInitializer`
