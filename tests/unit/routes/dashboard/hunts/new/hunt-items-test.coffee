`import { moduleFor, test } from 'ember-qunit'`

moduleFor 'route:dashboard/hunts/new/hunt-items', 'Unit | Route | dashboard/hunts/new/hunt items', {
  # Specify the other units that are required for this test.
  # needs: ['controller:foo']
}

test 'it exists', (assert) ->
  route = @subject()
  assert.ok route
