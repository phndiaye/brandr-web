`import DS from 'ember-data'`
`import ENV from 'brandr-web/config/environment'`

ApplicationAdapter = DS.RESTAdapter.extend
  namespace: 'api/v1'
  shouldReloadAll: (store, snapshot) ->
    !store.peekAll( snapshot.type.modelName ).length

if ENV.environment == 'development'
  ApplicationAdapter.reopen
    host: ENV.API_HOST

`export default ApplicationAdapter`
