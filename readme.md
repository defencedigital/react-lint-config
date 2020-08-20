# R2D2 Lint Config

This package provides linting configuration to React Apps.

## Installation

This package can be installed via `yarn` or `npm`

### npm

```shell
npm install @defencedigital/r2d2-lint-config
```

### yarn

```shell
yarn add @defencedigital/r2d2-lint-config
```

## Configuration

In the root of your project create the following files:

**`.eslintrc.js`**

```js
const config = require('@defencedigital/r2d2-lint-config');
module.exports = config;
```

**`.stylelintrc`**

```json
{
  "extends": ["@defencedigital/r2d2-lint-config/stylelint.config"]
}
```
