module.exports = {
  env: {
    browser: true,
    node: true,
    es6: true,
    jest: true
  },
  parser: '@typescript-eslint/parser',
  parserOptions: {
    ecmaVersion: 2020,
    sourceType: 'module',
    ecmaFeatures: {
      jsx: true
    }
  },
  plugins: ['security'],
  extends: [
    'eslint:recommended',
    'plugin:@typescript-eslint/recommended',
    'plugin:jest/recommended',
    'plugin:jsx-a11y/recommended',
    'plugin:react/recommended',
    'plugin:react-hooks/recommended',
    'plugin:security/recommended',
    'plugin:import/errors',
    'plugin:import/warnings'
  ],
  rules: {
    "no-undef": [ "error" ],
    "no-unused-vars": [ "error", { "vars": "local" } ],
    "indent": ["error", 2],
    "react/jsx-indent-props": ["warn", 2],
    "react/jsx-indent" : ["error", 2],
    "max-len": ["error", {
      "code": 120,
      "tabWidth": 2,
      "ignoreTrailingComments": true,
      "ignoreUrls": true,
      "ignoreRegExpLiterals": true
    }],
    "semi": ["error", "always"],
    "no-dupe-keys": "error",
    "quotes": ["warn", "single", { "avoidEscape": true }],
    "no-unused-vars": 0,
    "@typescript-eslint/no-unused-vars": 2,
    "@typescript-eslint/member-delimiter-style": ["error", {
      "multiline": {
          "delimiter": "semi",
          "requireLast": true
      },
      "singleline": {
          "delimiter": "semi",
          "requireLast": false
      }
    }],
    "@typescript-eslint/comma-dangle": ["error", "only-multiline"],
  },
  settings: {
    react: {
      version: "detect"
    },
    'import/resolver': {
      node: {
        extensions: [".js", ".jsx", ".ts", ".tsx"]
      },
    },
  },
  root: true
}
