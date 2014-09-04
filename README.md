#Modern Front End Sandbox
---

## Summary

###### My attempt to build a javascript front-end with modern dev tools

### Goals

  - **General**
    - minimal startup: easy to build, easy to test
    - minimal dependencies
  - **Design**
    - screaming architecture
    - SOLID principles
  - **Importing/Loading**
    - reliable namespacing/require system
    - reliable method of importing all files to browser
    - reliable method of import/namespace for tests
    - maximum one app-defined object on global/window namespace
  - **Data Management/Presentation**
    - something other than 'our way or nothing' framework. looking at you rails
    - ability to integrate pure POJSO modules into framework/library
    - logicless templates
    - promise/a+ async info fetching
  - **Testing**
    - fast tests
    - no manual test manifest
    - ability to test in multiple browser envs


##Tool Chain

### Dev Tools
  - language            -> coffeescript
  - task runner         -> gulp
  - module system       -> browserify
  - Data/Action system   -> backbone
  - templating language -> mustache

### Testing
  - test framework                    -> jasmine
  - test runner/env-builder           -> testem
  - custom auto test-manifest builder -> app/spec/manifest_builder.js


## To Build
  - install `npm`
  - run `npm update`
  - install Browserify `npm install -g browserify`

## To Bundle Source
  - run `gulp bundle-src` which will output `bundle.js`
  - include `bundle.js` in your html index file (or other initial load file)

## To Test
   - do everything in the 'To Build' section
   - install Testem: `npm install -g testem`
   - run `testem`
