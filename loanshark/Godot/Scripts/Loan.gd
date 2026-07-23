extends Node3D

@onready var active = true

func _ready() -> void:
	visible = true

func _on_loan_get_area_3d_body_entered(body: Node3D) -> void:
	if active == true:
		Global.debt += 0.25
		active = false
	visible = false
