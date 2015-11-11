`import Ember from 'ember'`

OneHuntComponent = Ember.Component.extend
  actions:
    openHuntModal: ->
      @sendAction('action', @get('modal'), @get('hunt'))

`export default OneHuntComponent`
