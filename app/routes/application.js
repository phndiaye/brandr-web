import Ember from 'ember';

var ApplicationRoute = Ember.Route.extend({
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
