`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'compare-files', 'Integration | Component | compare files', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 1

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{compare-files}}"""

  assert.equal @$().text().trim(), 'SummaryDetailsHigh: Medium: Low: Passed: Unknown: High: Medium: Low: Passed: Unknown:'
