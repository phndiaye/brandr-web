initialize = (container, application) ->
  application.inject('helper', 'i18n', 'service:i18n')

I18nInitializer =
  name: 'i18n'
  after: 'ember-i18n'
  initialize: initialize

`export {initialize}`
`export default I18nInitializer`
