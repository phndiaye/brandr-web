`import Ember from 'ember'`

OneHuntComponent = Ember.Component.extend
  actions:
    goToHunt: ->
      hunt = @get('hunt')
      @sendAction('action', hunt)

`export default OneHuntComponent`
