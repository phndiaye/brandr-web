`import { moduleFor, test } from 'ember-qunit'`

moduleFor 'route:dashboard/index', 'Unit | Route | dashboard/index', {
  # Specify the other units that are required for this test.
  # needs: ['controller:foo']
}

test 'it exists', (assert) ->
  route = @subject()
  assert.ok route
