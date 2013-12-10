require './forceUI'

Bundle = 
	login  : require '/bundles/login/view'
	search : require '/bundles/search/view'
	qread  : require '/bundles/qread/view'
	batch  : require '/bundles/batch/view'
	serial : require '/bundles/serial/view'

login = new Bundle.login()
login.onOpen ->

	login.onClick ->

		search = new Bundle.search()
		search.onOpen ->

			search.onClick ->
				qread = new Bundle.qread()
				qread.onResult (result)-> alert(result)

			search.onSearch (e)->

				e.source.blur()

				# batch = new Bundle.batch()
				# batch.onOpen ->

				# 	batch.onSearch '111', ->

				serial = new Bundle.serial()
				serial.onOpen ->

					serial.onSearch '111', ->

						