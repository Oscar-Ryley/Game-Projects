extends TextureButton

func _ready():
	self.pressed.connect(self._button_pressed)

func _button_pressed():
	if Global.clicks >= Global.supgrade:
		Global.supplies += 1
		Global.clicks -= Global.supgrade
		Global.supgrade = int(Global.supgrade * 1.2)
