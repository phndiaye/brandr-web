`import Ember from 'ember'`

InjectSessionMixin = Ember.Mixin.create
  session: Ember.inject.service('session')

`export default InjectSessionMixin`
