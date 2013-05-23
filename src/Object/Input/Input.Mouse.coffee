class Input.Mouse extends Input

	init = (self)->
		self.click = null
		self.position = null

	constructor: (dom)->
		init this

		dom.addEventListener 'mousedown', (event)=>
			@click =
				button: event.button	# 0-left| 1-right
				x: event.offsetX or event.layerX
				y: event.offsetY or event.layerY

		dom.addEventListener 'mouseover', (event)=>
			@position =
				x: event.offsetX or event.layerX
				y: event.offsetY or event.layerY