extends Node2D

func _process(delta):
	if Global.health == 6:
		visible = true
		get_node("Heart3").visible = true
		get_node("Heart2").visible = true
		get_node("Heart3/Hurt").visible = false
		get_node("Heart2/Hurt").visible = false
		get_node("Heart1/Hurt").visible = false
		get_node("Heart3/Full").visible = true
		get_node("Heart2/Full").visible = true
		get_node("Heart1/Full").visible = true
	if Global.health <= 5:
		get_node("Heart3/Hurt").visible = true
		get_node("Heart3/Full").visible = false
	if Global.health <= 4:
		get_node("Heart3").visible = false
	if Global.health <= 3:
		get_node("Heart2/Hurt").visible = true
		get_node("Heart2/Full").visible = false
	if Global.health <= 2:
		get_node("Heart2").visible = false
	if Global.health <= 1:
		get_node("Heart1/Hurt").visible = true
		get_node("Heart1/Full").visible = false
	if Global.health == 0:
		visible = false
