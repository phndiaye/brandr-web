`import Ember from 'ember'`

OneHuntComponent = Ember.Component.extend
  actions:
    openHuntModal: ->
      @sendAction('action', @get('modal'), @get('hunt'), @get('controller'))

    closeHuntModal: ->
      @sendAction('closeModal')

`export default OneHuntComponent`
