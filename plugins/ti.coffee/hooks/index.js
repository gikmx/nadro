var VER    = '0.1';

var Coffee = require('coffee-script');
var Hooks  = require('./hooks')

exports.cliVersion = '>=3.X';

exports.init = function(logger, config, cli, appcelerator){

	// For some reason, an iteration cannot be used to add hooks.

	var args  = [logger, config, cli, appcelerator];

	// build state initialized, but not begun
	cli.addHook('build.pre.compile', {
		priority: 10000,
		pre:function(build, finished){
			Hooks.pre_compile.apply(this, args.concat([build, finished]));
		}
	});

}