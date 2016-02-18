`import Ember from 'ember'`

DashboardHuntsNewPhotoController = Ember.Controller.extend
  imageNotSet: ( ->
    @model.get('image') == undefined
  ).property('model.image')

`export default DashboardHuntsNewPhotoController`
