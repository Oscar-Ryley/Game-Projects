extends Sprite2D
var op_up = false

func _on_hinge_pressed():
	if op_up == true:
		$OptionPageAnim.play("Move down")
		op_up = false
	else:
		$OptionPageAnim.play("Move up")
		op_up = true
