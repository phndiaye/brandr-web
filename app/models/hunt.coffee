`import DS from 'ember-data'`

Hunt = DS.Model.extend {
  imageUrl: DS.attr('string')
  huntItems: DS.hasMany('hunt-item')

  huntsCount: ( ->
    @get('huntItems.length')
  ).property('huntItems')

  commentsCount: ( ->
    comments = 0
    @get('huntItems').reduce((acc, huntItem)->
      acc += huntItem.get('comments.length')
    , comments)
  ).property('huntItems.@each.comments')
}

`export default Hunt`
