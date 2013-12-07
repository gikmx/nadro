module.exports = (logger, config, cli, appcelerator, build, finished)->
	logger.info "ti.coffee » post-compile."
	finished()
