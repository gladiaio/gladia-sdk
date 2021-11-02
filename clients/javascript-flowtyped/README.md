## fast_api@3.5.2

This generator creates Flow typed JavaScript client that utilizes [Fetch API](https://fetch.spec.whatwg.org/). The generated Node module can be used in the following environments:

Environment
* Node.js
* Webpack
* Browserify

Language level
* ES6

Module system
* ES6 module system

### Building

To build an compile the flow typed sources to javascript use:
```
npm install
npm run build
```

### Publishing

First build the package then run ```npm publish```

### Consuming

navigate to the folder of your consuming project and run one of the following commands.

_published:_

```
npm install fast_api@3.5.2 --save
```

_unPublished (not recommended):_

```
npm install PATH_TO_GENERATED_PACKAGE --save
