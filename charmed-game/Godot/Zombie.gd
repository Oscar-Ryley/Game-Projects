extends CharacterBody2D

@export var spawn_crystal_object = preload("res://Godot/crystal_pickup.tscn")
const SPEED = 80
var health = 5
var charmable = false

func spawn_crystal():
	var obj = spawn_crystal_object.instantiate()
	get_node("/root/Scene").add_child(obj)
	obj.position = position + Vector2(636, 331)

func _ready():
	if charmable == true:
		get_node("Charmable").visible = true
		get_node("Uncharmable").visible = false
		get_node("Zombie-Area2D").name = "Charmable"

func _physics_process(delta):
	var velocity = global_position.direction_to(Global.wizard_position)
	move_and_collide(velocity * SPEED * delta)

func _process(delta):
	if health <= 0:
		queue_free()
		Global.kills += 1
		if charmable == true:
			spawn_crystal()
	if health == 2:
		if charmable == false:
			get_node("Zombie-hurt").visible = true
		else:
			get_node("Zombie-uncharmed-hurt").visible = true

func _on_area_2d_area_entered(area):
	if area.get_name() == "Wizard-Area" or area.get_name() == "Zombie-Area2D":
		pass
	elif area.get_name() == "Spirit-Area":
		if charmable == true and Global.dead == true:
			health = 0
			Global.dead = false
	else:
		health -= 1

