`import DS from 'ember-data'`

HuntItem = DS.Model.extend {
  top: DS.attr('number')
  left: DS.attr('number')
  comments: DS.hasMany('hunt-comment')

  commentsCount: ( ->
    @get('comments.length')
  ).property('comments')
}

`export default HuntItem`
