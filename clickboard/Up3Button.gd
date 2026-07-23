extends TextureButton

func _ready():
	self.pressed.connect(self._button_pressed)

func _button_pressed():
	if Global.clicks >= Global.cupgrade:
		Global.chairs += 1
		Global.clicks -= Global.cupgrade
		Global.cupgrade = int(Global.cupgrade * 1.2)
