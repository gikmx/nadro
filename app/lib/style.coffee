module.exports = 

	selector: (target)->
		match = 
			id      : null
			element : null
			classes : []

		# get element names
		match.element = m[1] if (m = target.match /^\s*([a-z][a-z0-9\-\_]*)/i)
		# get only one identifier
		match.id      = m[1] if (m = target.match /^[^#]*\#([a-z][a-z0-9\-\_]*)/i)
		# match every class name provided
		if (m = target.match /((?:\.[a-z][a-z0-9\-\_]*)+)+/)
			match.classes = m[1].split('.').slice(1)
		return match


	# TODO: Advanced property mixing
	render: (selector, style)->
		if typeof style[selector] isnt 'undefined'
		then style[selector]
		else {}