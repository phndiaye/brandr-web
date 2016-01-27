/* jshint node: true */

module.exports = function(deployTarget) {
  var ENV = {
    build: {},
    'revision-data': {
      type: 'git-commit'
    }
  };

  if (deployTarget === 'development') {
    ENV.build.environment = 'development';
  }

  if (deployTarget === 'production') {
    ENV.build.environment = 'production';
    ENV.redis = {
      host: 'localhost',
      database: 1,
      allowOverwrite: true
    };
    ENV['ssh-tunnel'] = {
      username:       'admin',
      host:           'ec2-52-91-155-86.compute-1.amazonaws.com',
      dstHost:        'brandr-production.vu76z5.0001.use1.cache.amazonaws.com'
    };
  }

  // Note: if you need to build some configuration asynchronously, you can return
  // a promise that resolves with the ENV object instead of returning the
  // ENV object synchronously.
  return ENV;
};
