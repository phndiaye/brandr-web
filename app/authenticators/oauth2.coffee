`import OAuth2PasswordGrant from 'ember-simple-auth/authenticators/oauth2-password-grant'`
`import ENV from 'brandr-web/config/environment'`

`export default OAuth2PasswordGrant.extend({
  serverTokenEndpoint: ENV['simple-auth-oauth2'].serverTokenEndpoint
})`
