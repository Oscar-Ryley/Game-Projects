extends TextureButton

func _ready():
	self.pressed.connect(self._button_pressed)

func _button_pressed():
	if Global.clicks >= Global.eupgrade:
		Global.employees += 1
		Global.clicks -= Global.eupgrade
		Global.eupgrade = int(Global.eupgrade * 1.2)
