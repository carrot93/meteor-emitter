meteor-emitter
==============

A server and client event package. 
On the server it will use node's events and on the client it will use jQuery. 
Whats nice about this package is it uses the same API for both server and client. 
This lets you write events that are not specific to the environment.

## New emitter
Create a new emitter with an optional name.
```js 
var emitter = Emitter(/* name */)
```
If you pass a name the events will be namespaced as `name_eventName`.
If you are using this in a package you should pass your package's name to prevent conflicts.

## Emitting events

The `emit` function takes an event name argument and any number of optional arguments.
```js 
emitter.emit('eventName', /*args*/);
```

The emitter handle will manage your namespacing for you.
```js

var emitter = Emitter('Emitter');
emitter.emit('sleep', {userIsSleeping: true});
```

In this example the event name will be `Emitter_sleep`. 
Its important to note that you should not need to reference the event directly.

## Listening to events

If you want to listen to the event in the above example you would use the `on` function.

```js
emitter.on('sleep', function (isSleeping) {
  if (isSleeping) {
    //do something useful
  }
});
```

## TODO

* TESTS!
* More functions? Make an issue or pull request as needed.
