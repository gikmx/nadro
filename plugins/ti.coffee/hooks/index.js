var VER    = '0.1';

var Coffee = require('coffee-script');
var Hooks  = require('./hooks')

exports.cliVersion = '>=3.X';


exports.init = function(logger, config, cli, appcelerator){

	// For some reason, an iteration cannot be used to add hooks.

	var args  = [logger, config, cli, appcelerator];

	// fires before the build even starts
	cli.addHook('build.pre.construct', function(build, finished){
		Hooks.pre_construct.apply(this, args.concat([build, finished]))
	});

	// build state initialized, but not begun
	cli.addHook('build.pre.compile', function(build, finished){
		Hooks.pre_compile.apply(this, args.concat([build, finished]))
	});

	// XCode pre-compile phase, after minifying/copy (only devices) 
	cli.addHook('build.prerouting', function(build, finished){
		Hooks.pre_routing.apply(this, args.concat([build, finished]))
	});

	// After successful on unsuccessful builds
	cli.addHook('build.post.compile', function(build, finished){
		Hooks.post_compile.apply(this, args.concat([build, finished]))
	});
}