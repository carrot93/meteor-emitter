EventEmitter
============

[@raix](https://github.com/raix) seems to be working on [his version](https://github.com/raix/Meteor-EventEmitter) so I guess I will depreacated this in favor of his. For those using this, I have never had an issue with this package so there is no demand to switch. But if you adding this package for the first time you will likely want raix's package.


A server and client event package. 
On the server it will use node's events and on the client it will use jQuery. 
Whats nice about this package is it uses the same API for both server and client. 
This lets you write events that are not specific to the environment.

## New emitter
Create a new emitter.
```js 
var emitter = new EventEmitter();
```

## Emitting events

The `emit` function takes an event name argument and any number of optional arguments.
```js 
emitter.emit('eventName', /*args*/);
```

The emitter handle will manage your namespacing for you.
```js

var emitter = new EventEmitter();
emitter.emit('sleep', {userIsSleeping: true});
```

## Listening to events

If you want to listen to the event in the above example you would use the `on` function.

```js
emitter.on('sleep', function (state) {
  if (state.userIsSleeping) {
    //do something useful
  }
});
```

## Api

Node / jQuery like api:
* `on` / `addListener`
* `once` / `once`
* `emit` / `trigger`
* `off` / `removeListener`
* `removeAllListeners`

## TODO

* TESTS!
* More functions? Make an issue or pull request as needed.
