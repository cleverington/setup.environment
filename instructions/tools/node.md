Node
====

NOTE: I specifically discourage setting up node directly and instead recommend
that everyone use NVM (node version manager) to install many versions of node
and can quickly switch between their many desired versions.

NVM
----
- Go to this page for the latest install command:
https://github.com/creationix/nvm#install-script

Once installed, you can simply run the command `nvm install node` to install the latest version of Node.

See https://github.com/nvm-sh/nvm#usage for installing specific versions of Node.

## Global Node Packages

**Note:** These will likely be listed elsewhere in the setup area, but listing them here as a group.

**Second Note:** Some of these are project specific.  If you aren't going to be playing with Fractal? Don't install it.

**Third Note:** Install `yarn`. There's not really much difference between `yarn` and `npm` fairly often, but some projects require it.  So adding it doesn't really cause _that_ much tech-debt on your system.

``` bash
npm install -g @frctl/fractal --save-dev
npm install -g @vue/cli --save-dev
npm install -g @wordpress/env --save-dev
npm install -g bower --save-dev
npm install -g eslint eslint-plugin-import eslint-config-airbnb-base
npm install -g grunt
npm install -g gulp
npm install -g lighthouse
npm install -g netlify-cli
npm install -g node-gyp
npm install -g yarn
```
