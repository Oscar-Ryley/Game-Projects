extends CharacterBody3D

const SPEED = 4.0
var hero
@export var turn_speed = 1.0

func _ready():
	hero = %SharkPlayer

func _process(delta: float) -> void:
	scale.x = Global.debt
	scale.y = Global.debt
	scale.z = Global.debt

func _physics_process(delta):
	if int(delta) % 4 == 0:
		$FaceDirection.look_at(hero.global_transform.origin, Vector3.UP)
		rotate_y(-deg_to_rad($FaceDirection.rotation.y * turn_speed))
		$NavigationAgent3D.set_target_position(hero.global_transform.origin)
	var velocity = ($NavigationAgent3D.get_next_path_position() - transform.origin).normalized() * SPEED * delta
	move_and_collide(velocity)
