`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend({
  location: config.locationType
})

Router.map () ->
  @route 'dashboard', path: '/', ->
    @route 'hunts', path: '/', ->
      @route 'register', path: 'sign_up'
      @route 'login', path: 'sign_in'
      @route 'show', path: '/h/:id'
      @route 'new', path: '/h/new', ->
        @route 'photo', path: '/picture'
        @route 'hunt-items', path: '/items'

`export default Router`
