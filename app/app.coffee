require './hacks'
Bundle = 
	login  : require '/bundles/login/view'
	search : require '/bundles/search/view'
	qread  : require '/bundles/qread/view'

login = new Bundle.login()

login.onClick ->

	search = new Bundle.search()
	
	search.open()
	
	search.onClick -> new Bundle.qread()

	search.onSearch ->
		alert('search')


