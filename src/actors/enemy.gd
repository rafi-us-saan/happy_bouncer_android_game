extends "res://src/actors/Actor.gd"

onready var stomp_area: Area2D = $StompArea2D

export var score: = 500

func _ready() -> void:
	set_physics_process(false)
	_velocity.x = -speed.x

func _physics_process(delta: float) -> void:
	_velocity.y = gravity * delta 
	if is_on_wall():
		_velocity.x *= -1.0
	_velocity.y = move_and_slide(_velocity, FLOOR_NORMAL).y
	

func _on_StompDetector_body_entered(body: PhysicsBody2D) -> void:
	if body.global_position.y > get_node("StompDetector").global_position.y:
		return 
	get_node("CollisionShape2D").disabled = true
	$EnemyDie.play()
	$AnimationPlayer.play("death")
	$Timer.start()




func die() -> void:
	queue_free()
	PlayerData.score +=score





func _on_Timer_timeout():
	die()
