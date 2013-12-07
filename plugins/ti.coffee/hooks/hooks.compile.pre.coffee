# Node Modules
FS    = require 'fs'
Path  = require 'path'
Proc  = require 'child_process'

try
	# NPM modules
	SH     = require 'execSync'
	Coffee = require 'coffee-script'
catch e
	return (console.error "Error in Script:", e)

path =
	ae        : 'ae'
	app       : 'app'
	root      :  null
	static    : 'static'
	resources : 'Resources'

module.exports = (logger, config, cli, appcelerator, build, finished)->
	logger.info "ti.coffee » pre-compile."

	# Error shortcut
	Error = ->
		Array.prototype.slice.call(arguments).map (error)->
			logger.error "ti.coffee » #{error}"
		process.exit(2)

	# Determine root path
	path.root = __dirname
	while (path.root = Path.resolve "#{path.root}/..") isnt '/'
		break if FS.existsSync Path.join path.root, 'tiapp.xml'
	
	Error 'Could not find Project root.' if path.root is '/'

	path.app       = Path.join path.root, path.app
	path.static    = Path.join path.root, path.static
	path.resources = Path.join path.root, path.resources
	path.ae        = Path.join path.root, path.ae

	# Remove Resources
	SH.run "rm -Rf #{path.resources}"
	SH.run "mkdir -p #{path.resources}"

	# Copy static files
	SH.run "cp -R #{path.static}#{Path.sep} #{path.resources}"

	# find all coffee-script files and compile them
	files = SH.exec "find #{path.app} -type f -name '*.coffee'"
	files.stdout.split("\n").map (file)->
		return if not file

		dir  = Path.dirname(file).replace(path.app, path.resources)
		name = Path.basename(file, Path.extname file) + ".js"

		try
			file = FS.readFileSync(file, 'utf-8')
			file = Coffee.compile file, bare: false
		catch e
			Error JSON.stringify(e) if not e.location
			#name = Path.join(dir, name).replace(path.resources, '')
			Error "#{name}:#{e.location.first_line}:#{e.location.first_column} » #{e.message}"
		
		# make sure directory exists
		SH.run "mkdir -p #{dir}"
		name = Path.join dir,name
		FS.writeFileSync name, file
		logger.info "ti.coffee » Compiled: " + name.replace path.resources, ''

	finished()
