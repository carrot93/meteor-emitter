Package.describe({
  summary: "A server and client event package."
});

Package.on_use(function (api) {
	api.use(['underscore','coffeescript', 'jquery'])

  api.add_files([
    'emitter.coffee'
    ], ['client', 'server']);

  Npm.depends({
    'event-emitter': '0.2.2'
  })
  api.export('Emitter')
});
