`import DS from 'ember-data'`

User = DS.Model.extend {
  firstname: DS.attr('string')
  lastname: DS.attr('string')
  username: DS.attr('string')
  email: DS.attr('string')
  gender: DS.attr('string')
  createdAt: DS.attr('date')
}

`export default User`
