module.exports = {
  extends: [
    'stylelint-config-standard',
    'stylelint-config-sass-guidelines',
  ],
  ignoreFiles: [
    './coverage/**/*',
    './dist/**/*',
    './build/**/*',
    './node_modules/**/*',
    './src/**/__snapshots__/**/*',
  ],
  rules: {
    'at-rule-no-unknown': null,
    'scss/at-rule-no-unknown': true,
    'max-nesting-depth': 4,
    'indentation': 2
  },
}
