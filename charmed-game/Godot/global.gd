extends Node

@export var end_screen_object = preload("res://Godot/end_screen.tscn")
@export var spawn_zombie_object = preload("res://Godot/Zombie.tscn")
var spawn_pos_list = [Vector2(-675,-350), Vector2(675, 350), Vector2(-675, 350), Vector2(675, -350)]
var wizard_position = Vector2(0,0)
var zombies = 0
var kills = 0
var health = 6
var dead = false
var lost = false
var high_score = 0
var restart = false
var zombie_list = []

func spawn_zombie(charmable):
	var obj = spawn_zombie_object.instantiate()
	obj.position = spawn_pos_list[randi() % spawn_pos_list.size()]
	if charmable:
		obj.charmable = true
	zombie_list.append(obj)
	add_child(obj)

func _ready():
	pass

func _process(delta):
	if zombies == 1:
		get_node("Spawn_timer").wait_time = 5
	if zombies == 10:
		get_node("Spawn_timer").wait_time = 4
	elif zombies == 20:
		get_node("Spawn_timer").wait_time = 3
	elif zombies == 30:
		get_node("Spawn_timer").wait_time = 2
	elif zombies == 60:
		get_node("Spawn_timer").wait_time = 1.5
	elif zombies == 100:
		get_node("Spawn_timer").wait_time = 1
	elif zombies == 150:
		get_node("Spawn_timer").wait_time = 0.75
	elif zombies == 200:
		get_node("Spawn_timer").wait_time = 0.5
	
	if lost == true:
		var end_screen = end_screen_object.instantiate()
		add_child(end_screen)
	elif lost == false and restart == true:
		for zombie in zombie_list:
			zombie.queue_free()
		restart = false
	
	if kills > high_score:
		high_score = kills

func _on_timer_timeout():
	if randi_range(0, 4) == 4:
		spawn_zombie(true)
	else:
		spawn_zombie(false)
	zombies += 1
