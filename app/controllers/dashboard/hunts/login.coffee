`import Ember from 'ember'`
`import InjectSessionMixin from 'brandr-web/mixins/inject-session'`
`import LoginMixin from 'brandr-web/mixins/login'`

DashboardHuntsLoginController = Ember.Controller.extend(InjectSessionMixin, LoginMixin)

`export default DashboardHuntsLoginController`
