Emitter = (name) ->
	if name then targetRoot = "#{name}_" else targetRoot = ''

	emitter = {}

	if Meteor.isServer
		
		EventEmitter = Npm.require('event-emitter')()

		emitter.on = (name, func) ->
			EventEmitter.on targetRoot + name, func

		emitter.emit = (name, args) ->
			EventEmitter.emit targetRoot + name, args

	if Meteor.isClient
			
		emitter.on = (name, func) ->
			dropJ = () -> func.apply(@, _.rest(arguments))
			$(window).on targetRoot + name, dropJ

		emitter.emit = (name, args) =>
			$(window).triggerHandler
				type: targetRoot + name
				args

	emitter










