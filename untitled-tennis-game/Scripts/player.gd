extends CharacterBody2D


const SPEED = 400.0

func getX() -> float:
	return Input.get_action_strength("right") - Input.get_action_strength("left")

func _physics_process(_delta: float) -> void:
	var direction: Vector2=Vector2(getX(), 0)
	velocity = direction * SPEED
	move_and_slide()
