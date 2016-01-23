`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend({
  location: config.locationType
})

Router.map () ->
  @route 'login'
  @route 'dashboard', path: '/', ->
    @route 'hunts', path: '/', ->
      @route 'show', path: '/h/:id'
      @route 'new', path: '/h/new'

`export default Router`
