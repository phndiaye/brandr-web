`import DS from 'ember-data'`

User = DS.Model.extend {
  firstname: DS.attr('string')
  lastname: DS.attr('string')
  email: DS.attr('string')
}

`export default User`
