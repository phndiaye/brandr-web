import Ember from 'ember';
import InjectSessionMixin from 'brandr-web/mixins/inject-session';

var ApplicationRoute = Ember.Route.extend(InjectSessionMixin, {
  beforeModel: function() {
    if (this.get('session').isAuthenticated) {
      return this._populateCurrentUser()
    }
  },

  _populateCurrentUser: function() {
    var _this = this
    return this.store.find('user', 'me').then(function(user) {
      _this.set('currentUser.content', user)
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
