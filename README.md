# cork-app-load
polyfill and polymer app build loader

## Install

add to client dependencies

```
yarn add @ucd-lib/cork-app-load
```

link to client folder

```
ln -s node_modules/@ucd-lib/cork-app-load/lib loader
```

add loader to html

```html
<script src="/loader/loader.js"></script>
```

The loader expects javscript bundles to exist. `/js/bundle.js` for all modern browsers and `/js/ie-bundle.js` for all older browsers.  See [cork-app-build](https://github.com/UCDavisLibrary/cork-app-build) for bundler instructions.

## Cache-Control

To break to check you can optionally define `CORK_LOADER_VERSIONS` before you insert the loader script and the loader will append a version flag to polyfill and bundle requests breaking any cache control header on update.

Example:

```html
<script>
var CORK_LOADER_VERSIONS = {
  loader : '0.0.3',
  bundle : '0.1.0'
}
<script>
<script src="/loader/loader.js?_=0.0.3"></script>
```

This will load make the following request on modern browsers:

- /loader/loader.js?_=0.0.3
- /loader/polyfills/webcomponents-loader.js?_=0.0.3
- /loader/polyfills/bundles/webcomponents-*.js?_=0.0.3 (if required)
- /js/bundle.js?_=0.1.0

Or for IE:

- /loader/loader.js?_=0.0.3
- /loader/polyfills/babel-polyfill.js?_=0.0.3
- /loader/polyfills/webcomponents-loader.js?_=0.0.3
- /loader/polyfills/bundles/webcomponents-*.js?_=0.0.3
- /js/ie-bundle.js?_=0.1.0
