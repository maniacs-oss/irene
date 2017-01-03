`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'file-details', 'Integration | Component | file details', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 1

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{file-details}}"""

  assert.equal @$().text().trim(), 'File Details  |  High: Medium: Low: Passed: Unknown: version codePDF Password  Copy PasswordPDF ReportVulnerability Details'
