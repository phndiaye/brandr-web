`import DS from 'ember-data'`

Hunt = DS.Model.extend {
  image: DS.attr('raw')
  imageUrl: DS.attr('string')
  user: DS.belongsTo('user')
  huntsCount: DS.attr('number')
  huntItems: DS.hasMany('hunt-item', { async: false })
  createdAt: DS.attr('date')
  updatedAt: DS.attr('date')

  commentsCount: ( ->
    comments = 0
    @get('huntItems').reduce((acc, huntItem) ->
      acc += huntItem.get('comments.length')
    , comments)
  ).property('huntItems.@each.comments')
}

`export default Hunt`
