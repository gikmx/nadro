Utils = {}

Utils.require = (path)->
	try          result = require String path
	catch e then result = false
	return result
	
Utils.is = Utils.require('/lib/utils/type') or {}

Utils.extend = ->
	sources = Array::slice.call arguments
	destiny = {}
	while (source = sources.shift())
		if not Utils.is.object source
			throw new Error "Expecting an object, got: #{String source}"
		for name, property of source
			destiny[name] =
				if Utils.is.object property
				then arguments.callee destiny[name] or {}, property
				else destiny[name] = property
	return destiny

module.exports = Utils