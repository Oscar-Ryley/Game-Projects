extends TextureButton

func _ready():
	self.pressed.connect(self._button_pressed)

func _button_pressed():
	if Global.clicks >= Global.tupgrade:
		Global.tanks += 1
		Global.clicks -= Global.tupgrade
		Global.tupgrade = int(Global.tupgrade * 1.2)
