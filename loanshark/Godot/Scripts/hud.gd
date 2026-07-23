extends Node2D

func _process(delta: float) -> void:
	%Debt.text = "$" + str((Global.debt - 1) * 1000)
