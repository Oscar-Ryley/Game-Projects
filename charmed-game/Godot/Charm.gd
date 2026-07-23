extends Area2D

var movement = Vector2(7, 0)

func _physics_process(delta):
	global_position += movement
