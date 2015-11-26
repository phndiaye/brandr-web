`import DS from 'ember-data'`
`import DataAdapterMixin from 'ember-simple-auth/mixins/data-adapter-mixin'`
`import ENV from 'brandr-web/config/environment'`

ApplicationAdapter = DS.RESTAdapter.extend DataAdapterMixin,
  namespace: 'api/v1'
  authorizer: 'authorizer:oauth2'

if ENV.environment == 'development'
  ApplicationAdapter.reopen
    host: ENV.API_HOST

`export default ApplicationAdapter`
