`import Ember from 'ember'`
`import InjectSessionMixin from '../../../mixins/inject-session'`
`import { module, test } from 'qunit'`

module 'Unit | Mixin | inject session'

# Replace this with your real tests.
test 'it works', (assert) ->
  InjectSessionObject = Ember.Object.extend InjectSessionMixin
  subject = InjectSessionObject.create()
  assert.ok subject
