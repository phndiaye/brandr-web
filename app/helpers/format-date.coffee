`import Ember from 'ember'`

# This function receives the params `params, hash`
formatDate = (params) ->
  date = params[0]
  moment(date).fromNow()

FormatDateHelper = Ember.Helper.helper formatDate

`export { formatDate }`

`export default FormatDateHelper`
