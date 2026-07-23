extends Node2D

func _process(delta):
	if Global.lost == false:
		Global.kills = 0
		Global.zombies = 0
		Global.restart = true
		queue_free()
