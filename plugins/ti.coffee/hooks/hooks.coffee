module.exports =

	pre_construct: require './hooks.construct'

	pre_compile: require './hooks.compile.pre'

	pre_routing: require './hooks.routing'

	post_compile: require './hooks.compile.post'