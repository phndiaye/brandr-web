`import Ember from 'ember'`
`import LoginMixin from '../../../mixins/login'`
`import { module, test } from 'qunit'`

module 'Unit | Mixin | login'

# Replace this with your real tests.
test 'it works', (assert) ->
  LoginObject = Ember.Object.extend LoginMixin
  subject = LoginObject.create()
  assert.ok subject
