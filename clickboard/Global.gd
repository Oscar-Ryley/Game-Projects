extends Node

var clicks = 0
var employees = 0
var eupgrade = 115
var supplies = 0
var supgrade = 95
var chairs = 0
var cupgrade = 65
var tanks = 1
var tupgrade = 30

var previous = 0

@onready var spawn_object = preload("res://Employee.tscn")

func _process(delta):
	if Global.employees != previous:
		create(Vector2(300, -200))
	previous = Global.employees

func create(pos):
	var obj = spawn_object.instantiate()
	obj.position = pos
	self.add_child(obj)
