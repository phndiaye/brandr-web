export default {
  'invalid_grant': 'Wrong email address or password',
  'user': {
    'firstname': {
      'errors': {
        'blank': "The firstname can't be empty"
      }
    },
    'lastname': {
      'errors': {
        'blank': "The lastname can't be empty"
      }
    },
    'email': {
      'errors': {
        'blank': "The email address can't be empty"
      }
    },
    'password': {
      'errors': {
        'blank': "You must have a password. They're useful, you know?",
        'taken': "This email address is already taken"
      }
    },
    'password_confirmation': {
      'errors': {
        'confirmation': "Your password and password confirmation do not match"
      }
    },
  }
};
