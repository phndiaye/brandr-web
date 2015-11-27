`import DS from 'ember-data'`

HuntComment = DS.Model.extend {
  user: DS.belongsTo('user')
  huntItem: DS.belongsTo('hunt-item')
  text: DS.attr('string')
}

`export default HuntComment`
