extends CharacterBody2D

func _physics_process(delta):
	move_and_slide()
	
	if Input.is_action_pressed("right"):
		velocity.x = 100
	if Input.is_action_pressed("left"):
		velocity.x = -100
	velocity.x = lerp(velocity.x, 0.0, 0.2)
