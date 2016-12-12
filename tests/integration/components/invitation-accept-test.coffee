`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'invitation-accept', 'Integration | Component | invitation accept', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 1

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{invitation-accept}}"""

  assert.equal @$().text().trim(), 'Signup & Accept InviteSecurity fanatics at your service has invited you to  projectSignup & Accept InviteLogin?'
