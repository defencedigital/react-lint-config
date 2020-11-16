# React Lint Config

This package provides linting configuration to React Apps.

## Installation

This package can be installed via `yarn` or `npm`

### npm

```shell
npm install @rainthief/react-lint-config
```

### yarn

```shell
yarn add @rainthief/react-lint-config
```

## Configuration

In the root of your project create the following files:

**`.eslintrc.js`**

```js
const config = require('@rainthief/react-lint-config');
module.exports = config;
```

**`.stylelintrc`**

```json
{
  "extends": ["@rainthief/react-lint-config/stylelint.config"]
}
```
