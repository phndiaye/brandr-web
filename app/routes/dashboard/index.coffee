`import Ember from 'ember'`

DashboardIndexRoute = Ember.Route.extend
  model: ->
    [
      {
        id: 1,
        imageUrl: 'http://photon.101medialablimit.netdna-cdn.com/hypebeast.com/image/2015/10/essentials-maxime-buchi-1.jpg',
        huntsCount: 3,
        commentsCount: 132,
        comments: [{
          posterPict: 'https://s3.amazonaws.com/uifaces/faces/twitter/jsa/128.jpg',
          text: 'Entitled "Juke Or Treat,\" the track was shared by The Social
                 Experiment\'s Petter Cottontale on Halloween yesterday and features
                 samples from X-Files, Ghostbusters and The Twilight Zone.'
          upvotes: 3,
          downvotes: 1
        },
        {
          posterPict: 'https://s3.amazonaws.com/uifaces/faces/twitter/jsa/128.jpg',
          text: 'Entitled "Juke Or Treat," the track was shared by The Social'
          upvotes: 2,
          downvotes: 4
        }]
      },
      {
        id: 2,
        imageUrl: 'http://photon.101medialablimit.netdna-cdn.com/hypebeast.com/image/2015/09/essentials-astrid-andersen-1.jpg?w=1382',
        huntsCount: 1,
        commentsCount: 0,
      },
      {
        id: 3,
        imageUrl: 'http://photon.101medialablimit.netdna-cdn.com/hypebeast.com/image/2015/09/essentials-matt-fine-of-shiekh-shoes-001.jpg?w=1382',
        huntsCount: 1,
        commentsCount: 0,
      },
      {
        id: 4,
        imageUrl: 'https://s-media-cache-ak0.pinimg.com/736x/e3/06/d1/e306d1537eb21119449172c2a08915d1.jpg',
        huntsCount: 1,
        commentsCount: 0,
      },
      {
        id: 5,
        imageUrl: 'http://photon.101medialablimit.netdna-cdn.com/hypebeast.com/image/2015/08/essentials-jason-peterson-01.jpg?w=1499',
        huntsCount: 1,
        commentsCount: 0,
      },
      {
        id: 6
        imageUrl: 'http://photon.101medialablimit.netdna-cdn.com/hypebeast.com/image/2015/10/essentials-maxime-buchi-1.jpg?w=1382',
        huntsCount: 1,
        commentsCount: 0,
      },
    ]

  actions:
    openHuntModal: (modal, model) ->
      router = @router

      @controller.set '_previousUrl', router.router.generate(router.currentRouteName)
      @send('openModal', modal, model)
      router.router.updateURL(router.router.generate('dashboard.hunt', model.id))

    closeHuntModal: ->
      router = @router
      router.router.updateURL(@controller.get('_previousUrl'))
      @send('closeModal')

`export default DashboardIndexRoute`
