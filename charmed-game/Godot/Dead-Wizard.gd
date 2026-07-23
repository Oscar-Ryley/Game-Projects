extends Sprite2D

func ready():
	visible = false

func _process(delta):
	if Global.health <= 0:
		visible = true
		position = Global.wizard_position + Vector2(681,362)
		set_process(false)
