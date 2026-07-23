extends Node
var ga_up = true

func _on_hinge_pressed():
	if ga_up == true:
		$GamePageAnim.play("Game Move down")
		ga_up = false
	else:
		$GamePageAnim.play("Game Move up")
		ga_up = true
