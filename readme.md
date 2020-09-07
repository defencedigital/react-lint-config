# React Lint Config

This package provides linting configuration to React Apps.

## Installation

This package can be installed via `yarn` or `npm`

### npm

```shell
npm install @defencedigital/react-lint-config
```

### yarn

```shell
yarn add @defencedigital/react-lint-config
```

## Configuration

In the root of your project create the following files:

**`.eslintrc.js`**

```js
const config = require('@defencedigital/react-lint-config');
module.exports = config;
```

**`.stylelintrc`**

```json
{
  "extends": ["@defencedigital/react-lint-config/stylelint.config"]
}
```
