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

The loader expects teo javscript bundles to exist. `/js/bundle.js` for all modern browsers and `/js/ie-bundle.js` for all older browsers.  See [cork-app-build](https://github.com/UCDavisLibrary/cork-app-build) for bundler instructions.