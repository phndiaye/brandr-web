`import DS from 'ember-data'`

User = DS.Model.extend {
  firstname: DS.attr('string')
  lastname: DS.attr('string')
  username: DS.attr('string')
  email: DS.attr('string')
  password: DS.attr('string')
  passwordConfirmation: DS.attr('string')
  gender: DS.attr('string')
  createdAt: DS.attr('date')

  fullname: ( ->
    "#{@get('firstname')} #{@get('lastname')}"
  ).property()
}

`export default User`
