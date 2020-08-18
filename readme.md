# R2D2 Lint Config
This package provides linting configuration to React Apps.

@todo write readme
@todo pipeline

## Installation
This is available as an NPM package or via got directly.

### NPM

The package registry is on Github so you will need to apply a scoped registry to your `~/.npmrc`

```
@defencedigital:registry=https://npm.pkg.github.com/
```

The you can install via `yarn` or `npm`

**NPM**
```
$ npm install @defencedigital/r2d2-lint-config
```

**yarn**
```
yarn add @defencedigital/r2d2-lint-config
```

### Git

You can install directly from Git referencing a commit, tag or branch

```
yarn add @defencedigital/r2d2-lint-config@https://github.com/defencedigital/r2d2-lint-config.git#<branch|commit|tag>
```

## Configuration

In the root of your project create the following files:

**`.eslintrc.js`**

```js
module.exports = {
  extends: ['@defencedigital/r2d2-lint-config'],
}
```

**`.stylelintrc`**

```json	
{
  "extends": ["@defencedigital/r2d2-lint-config/stylelint.config"]
}
```
