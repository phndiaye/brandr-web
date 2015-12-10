`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend({
  location: config.locationType
})

Router.map () ->
  @route 'login'
  @route 'dashboard', path: '/dashboard', ->
    @route 'hunt', path: '/hunt', ->
      @route 'show', path: '/:id'

`export default Router`
