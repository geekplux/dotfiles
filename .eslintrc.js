module.exports = {
  parser: 'babel-eslint',
  parserOptions: {
    ecmaVersion: 6,
    sourceType: 'module'
  },
  rules: {
    semi: 2
  },
  extends: 'airbnb-base',
  env: {
    'browser': true,
    'es6': true
  },
};
