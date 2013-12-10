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

			onFinish = ->
				alert('Terminado')

			onResult = (e)->

				e.source.blur()

				isSerial = e.source.value.match /^[PS]F/
				target   = new Bundle[if isSerial then 'serial' else 'batch']()

				target.onOpen -> target.onSearch e.source.value, onFinish

			search.onClick ->
				qread = new Bundle.qread()
				qread.onResult (result)-> search.onSearch result, onResult

			search.onSearch onResult