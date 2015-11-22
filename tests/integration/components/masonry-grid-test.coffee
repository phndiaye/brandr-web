`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'masonry-grid', 'Integration | Component | masonry grid', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{masonry-grid}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#masonry-grid}}
      template block text
    {{/masonry-grid}}
  """

  assert.equal @$().text().trim(), 'template block text'
