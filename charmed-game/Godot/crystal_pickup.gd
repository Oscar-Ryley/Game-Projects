extends Node2D

func _on_crystal_area_area_entered(area):
	if area.get_name() == "Wizard-Area" or area.get_name() == "Spirit-Area":
		queue_free()
		Global.kills += 1
