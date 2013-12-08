module.exports =  

	object    : (e)-> e is Object(e) and Object::toString.call(e) is '[object Object]'
	array     : (e)-> not @object(e) and Object::toString.call(e) is '[object Array]'
	argument  : (e)-> not @object(e) and Object::toString.call(e) is '[object Arguments]'
	boolean   : (e)-> typeof e is 'boolean'
	string    : (e)-> typeof e is 'string'
	number    : (e)-> typeof e is 'number'
	function  : (e)-> typeof e is 'function'
	undefined : (e)-> typeof e is 'undefined'
	integer   : (e)-> @number(e) and parseFloat(e) is parseInt(e,10) and not isNaN(e)
	float     : (e)-> @number(e) and not @integer(e)

