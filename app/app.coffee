require './forceUI'


Bundle = 
	qread   : require '/bundles/qread/view'
	login   : require '/bundles/login/view'
	tabs    : require '/bundles/tabs/view'

login = new Bundle.login()
login.onClick ->
	tabs = new Bundle.tabs()

	tabs.open()

	tabs.dashboard.onSearch (e)->
		tabs.dashboard.search e.source

	tabs.dashboard.onScan ->
		qread = new Bundle.qread()
		qread.onResult (result)->
			$searchBar = tabs.dashboard.$window.$header.$searchBar
			$searchBar.value = result
			tabs.dashboard.search $searchBar