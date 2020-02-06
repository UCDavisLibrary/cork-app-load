#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

root=lib/polyfills

npm install
rm -rf $root
mkdir $root

#cp node_modules/@babel/polyfill/dist/polyfill.min.js $root/babel-polyfill.js
webpack --entry ./polyfills.js --output ./lib/polyfills/polyfills.js
cp node_modules/@webcomponents/webcomponentsjs/webcomponents-loader.js $root/
cp -r node_modules/@webcomponents/webcomponentsjs/bundles $root/