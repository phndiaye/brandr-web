`import { moduleFor, test } from 'ember-qunit'`

moduleFor 'route:dashboard/hunts/index', 'Unit | Route | dashboard/hunts/index', {
  # Specify the other units that are required for this test.
  # needs: ['controller:foo']
}

test 'it exists', (assert) ->
  route = @subject()
  assert.ok route
