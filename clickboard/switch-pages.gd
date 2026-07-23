extends Node

func _process(delta):
	self.pressed.connect(self._switch)

func _switch():
	for i in 4:
		self.scale.y *= 0.7
		await get_tree().create_timer(0.4).timeout
	for i in 4:
		self.scale.y *= 1.428571429
		await get_tree().create_timer(0.4).timeout
