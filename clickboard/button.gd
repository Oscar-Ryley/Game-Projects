extends Node

func _ready():
	self.pressed.connect(self._button_pressed)

func _button_pressed():
	Global.clicks += Global.tanks
