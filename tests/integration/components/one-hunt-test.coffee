`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'one-hunt', 'Integration | Component | one hunt', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{one-hunt}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#one-hunt}}
      template block text
    {{/one-hunt}}
  """

  assert.equal @$().text().trim(), 'template block text'
