`import Ember from 'ember'`

HuntModalComponent = Ember.Component.extend
  actions:
    closeHuntModal: ->
      @sendAction('action')

`export default HuntModalComponent`
