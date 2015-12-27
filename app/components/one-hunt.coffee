`import Ember from 'ember'`

OneHuntComponent = Ember.Component.extend
  tagName: 'div'
  classNames: ['brndr-hunt col-xs-12 col-md-4']

  actions:
    goToHunt: ->
      hunt = @get('hunt')
      @sendAction('action', hunt)

`export default OneHuntComponent`
