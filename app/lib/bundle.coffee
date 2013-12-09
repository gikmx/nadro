Utils  = require '/lib/utils'
Style  = require '/lib/style'

_style = Utils.require('/style') or {}

module.exports = class

	# Properties
	_path  : null 
	_style : null

	# This private method, makes sure to always return corresponding "$creator"
	wrapper = (context, $parent)-> return (selector, properties)->
		return context.$.call context, selector, properties, $parent

	constructor: (@_path)-> 
		throw new Error 'Missing path' if typeof @_path isnt 'string'

		# Try to load a "style" in current path to extend Global styles
		@_style = Utils.extend(_style, Utils.require("#{@_path}/style") or {})


	$: (selector='view', properties={}, $parent=null)->

		isRoot = false

		if not $parent
			$parent = @ 
			isRoot  = true

		if Utils.is.object(properties) and properties.__readOnly
			readOnly = true
			properties.__readOnly = undefined

		target  = Style.selector(selector = String selector)
		if not Utils.is.string target.element
			throw new Error "Could not find an element on '#{selector}'."
		element = "#{target.element[0].toUpperCase()}#{target.element.slice(1)}"
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

		return $element if readOnly

		$element.$ = wrapper(@, $element)

		# Add the element to its parent when it's not root.
		$parent.add $element if not isRoot
		
		# there arent  neither objects nor array with this name (undefined)
		if not Utils.is.object($parent[name]) and not Utils.is.array($parent[name])
			$parent[name] = $element
		# there is already an array with this name, add a new element
		else if Utils.is.array $parent[name]
			$parent[name].push $element
		# there is already on object with this name, convert to array and add element
		else
			$parent[name] = [ $parent[name] ].concat [$element]
		return $parent