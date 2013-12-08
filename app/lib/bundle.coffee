Utils  = require '/lib/utils'
Style  = require '/lib/style'

_style = Utils.require('/style') or {}

module.exports = class

	# Properties
	_path  : null 
	_style : null

	# This private method, makes sure to always return corresponding "$creator"
	wrapper = (context, $parent)-> return ->
		args = Array::slice.call arguments
		args.push $parent
		return context.$.apply context, args

	constructor: (@_path)-> 
		throw new Error 'Missing path' if typeof @_path isnt 'string'

		# Try to load a "style" in current path to extend Global styles
		@_style = Utils.extend(_style, Utils.require("#{@_path}/style") or {})


	$: (selector, properties = {}, $parent = null)->

		isRoot = false

		if not $parent
			$parent = @ 
			isRoot  = true

		target = Style.selector String(original = selector)

		if not target.element
			throw new Error "Expecting an element."

		element = "#{String(target.element)[0].toUpperCase()}#{target.element.slice(1)}"

		try
			fn = Ti.UI["create#{element}"]
		catch e
			throw new Error "'#{target.element}' is not a valid element."

		# Append custom styles and parse
		(style = {}) and (style[selector] = properties)
		style  = Style.render selector, Utils.extend @_style, style

	 	# if the user specified an ID use that instead for the variable
		name = "$#{if target.id then target.id else target.element}"

		$element   = fn(style)
		$element.$ = wrapper(@, $element)

		# Add the element to its parent when it's not root.
		$parent.add $element if not isRoot
			
		
		# if an element exist with that name, convert it to array
		$parent[name] =
			if not Utils.is.object $parent[name] and not Utils.is.array $parent[name]
			then $element
			else
				if Utils.is.array $parent[name]
				then  $parent[name].concat  [$element]
				else [$parent[name]].concat [$element]

		return $parent