import Ember from 'ember';
import InjectSessionMixin from 'brandr-web/mixins/inject-session';
import ApplicationRouteMixin from 'ember-simple-auth/mixins/application-route-mixin';

var ApplicationRoute = Ember.Route.extend(InjectSessionMixin, ApplicationRouteMixin, {
  beforeModel() {
    if (this.get('session.isAuthenticated')) {
      return this._populateCurrentUser();
    }
  },

  _populateCurrentUser() {
    return this.store.find('user', 'me').then(
      user => this.get('currentUser').set('content', user) && user
    );
  },

  sessionAuthenticated() {
    this._populateCurrentUser().then(
      _ => this.transitionTo('dashboard.hunts')
    );
  },

  actions: {
    openModal: function(modal, model) {
      this.render(modal, {
        'into': 'application',
        'outlet': 'modal',
        'model': model
      });
    },

    closeModal: function(back) {
      this.disconnectOutlet({ 'outlet': 'modal', 'parentView': 'application' });
      this.transitionTo(back)
    }
  }
});

export default ApplicationRoute;
