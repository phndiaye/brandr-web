`import { moduleFor, test } from 'ember-qunit'`

moduleFor 'route:dashboard/hunts/new/photo', 'Unit | Route | dashboard/hunts/new/photo', {
  # Specify the other units that are required for this test.
  # needs: ['controller:foo']
}

test 'it exists', (assert) ->
  route = @subject()
  assert.ok route
