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

### Development

In development you can specify a git branch, commit or tag rather than using the latest release form the npm registry

```shell
yarn add @defencedigital/r2d2-lint-config@https://github.com/defencedigital/r2d2-lint-config.git#<branch|commit|tag>
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
