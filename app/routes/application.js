import Ember from 'ember';
import InjectSessionMixin from 'brandr-web/mixins/inject-session';
import ApplicationRouteMixin from 'ember-simple-auth/mixins/application-route-mixin';

var ApplicationRoute = Ember.Route.extend(InjectSessionMixin, ApplicationRouteMixin, {
  beforeModel: function() {
    if (this.session.isAuthenticated) {
      return this._populateCurrentUser()
    }
  },

  _populateCurrentUser: function() {
    var _this = this
    return this.store.find('user', 'me').then(function(user) {
      _this.set('currentUser.content', user)
    });
  },

  sessionAuthenticated: function() {
    var _this = this
    this._populateCurrentUser().then(function (user) {
      _this.transitionTo('dashboard.index');
    });
  },

  actions: {
    openModal: function(modal, model) {
      this.render(modal, {
        'into': 'application',
        'outlet': 'modal',
        'model': model
      });
    },

    closeModal: function() {
      this.disconnectOutlet({ 'outlet': 'modal', 'parentView': 'application' });
    }
  }
});

export default ApplicationRoute;
