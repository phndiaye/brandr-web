`import DS from 'ember-data'`

RawTransform = DS.Transform.extend
  deserialize: (serialized) ->
    if Ember.isNone(serialized)
      {}
    else
      serialized

  serialize: (deserialized) ->
    if Ember.isNone(deserialized)
      {}
    else
      deserialized

`export default RawTransform`
