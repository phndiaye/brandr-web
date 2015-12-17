`import { moduleForModel, test } from 'ember-qunit'`

moduleForModel 'hunt', 'Unit | Serializer | hunt',
  # Specify the other units that are required for this test.
  needs: ['serializer:hunt']

# Replace this with your real tests.
test 'it serializes records', (assert) ->
  record = @subject()

  serializedRecord = record.serialize()

  assert.ok serializedRecord
