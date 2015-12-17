`import DS from 'ember-data'`

HuntSerializer = DS.ActiveModelSerializer.extend(DS.EmbeddedRecordsMixin, {
  attrs:
    huntItems: { embedded: 'always' }
})

`export default HuntSerializer`
