Data    = 
	laboratorio: require '/data/laboratorio'

Bundle = 
	login : new (require '/bundles/login/view')
	tabs  : new (require '/bundles/tabs/view')

Bundle.login.onClick ->
	Bundle.tabs.open()

	Bundle.tabs.dashboard.onSearch (e)->
		Bundle.tabs.dashboard.search e.source.value

