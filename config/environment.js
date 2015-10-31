/* jshint node: true */

module.exports = function(environment) {
  var ENV = {
    modulePrefix: 'brandr-web',
    environment: environment,
    baseURL: '/',
    locationType: 'auto',
    EmberENV: {
      FEATURES: {
        // Here you can enable experimental features on an ember canary build
        // e.g. 'with-controller': true
      }
    },

    APP: {
      // Here you can pass flags/options to your application instance
      // when it is created
    }
  };

  ENV['contentSecurityPolicy'] = {
    'font-src': "*",
    'media-src': "*",
    'connect-src': "*",
    'img-src': "*",
    'style-src': "'self' 'unsafe-inline' fonts.googleapis.com",
    'default-src': "*"
  };

  ENV['simple-auth'] = {
    authorizer: 'simple-auth-authorizer:oauth2-bearer'
  }

  ENV['simple-auth-oauth2'] = {
    serverTokenEndpoint: 'oauth/token',
  }

  if (environment === 'development') {
    // ENV.APP.LOG_RESOLVER = true;
    // ENV.APP.LOG_ACTIVE_GENERATION = true;
    // ENV.APP.LOG_TRANSITIONS = true;
    // ENV.APP.LOG_TRANSITIONS_INTERNAL = true;
    // ENV.APP.LOG_VIEW_LOOKUPS = true;
    ENV.API_HOST = 'http://localhost:3000'
    ENV['simple-auth-oauth2'].serverTokenEndpoint = ENV.API_HOST + '/' + ENV['simple-auth-oauth2'].serverTokenEndpoint;
  }

  if (environment === 'test') {
    // Testem prefers this...
    ENV.baseURL = '/';
    ENV.locationType = 'none';

    // keep test console output quieter
    ENV.APP.LOG_ACTIVE_GENERATION = false;
    ENV.APP.LOG_VIEW_LOOKUPS = false;

    ENV.APP.rootElement = '#ember-testing';
  }

  if (environment === 'production') {

  }

  return ENV;
};
