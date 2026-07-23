extends Label

func _process(delta):
	if Global.clicks < 10000000000000:
		self.visible = true
	if Global.clicks >= 10000000000000:
		self.visible = false
