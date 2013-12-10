require './hacks'
Bundle = 
	login  : require '/bundles/login/view'
	search : require '/bundles/search/view'
	qread  : require '/bundles/qread/view'

login = new Bundle.login()

login.onClick ->

	search = new Bundle.search()
	search.open()

	search.onClick ->
		qread = new Bundle.qread()
		qread.onResult (result)->

			alert(result)

	search.onSearch ->
		alert('search')


