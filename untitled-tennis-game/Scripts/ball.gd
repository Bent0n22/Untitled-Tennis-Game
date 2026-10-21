extends CharacterBody2D

const SPEED := 10

func _ready() -> void:
	velocity = Vector2(0, SPEED)


func _physics_process(_delta: float) -> void:
	var collison :KinematicCollision2D= move_and_collide(velocity)
	if collison:
		var normal := collison.get_normal()
		velocity = velocity.bounce(normal)
