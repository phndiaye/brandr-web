`import DS from 'ember-data'`

HuntItem = DS.Model.extend {
  top: DS.attr('number')
  left: DS.attr('number')
  hunt: DS.belongsTo('hunt')
  comments: DS.hasMany('hunt-comment')
  commentsCount: DS.attr('number')
}

`export default HuntItem`
