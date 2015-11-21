`import DS from 'ember-data'`

HuntComment = DS.Model.extend {
  posterPict: DS.attr('string')
  text: DS.attr('string')
  upvotes: DS.attr('number')
  downvotes: DS.attr('number')
}

`export default HuntComment`
