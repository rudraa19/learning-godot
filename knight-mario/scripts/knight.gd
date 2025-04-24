extends CharacterBody2D

const SPEED = 100
const JUMP_FORCE = -900
const GRAVITY = 30

func _physics_process(delta):
	
	if Input.is_action_pressed("right"):
		velocity.x = SPEED
		$AnimatedSprite2D.play("walk")
		$AnimatedSprite2D.flip_h = false
	elif Input.is_action_pressed("left"):
		velocity.x = -SPEED
		$AnimatedSprite2D.play("walk")
		$AnimatedSprite2D.flip_h = true
	else:
		$AnimatedSprite2D.play("idle")
	
	if not is_on_floor():
		$AnimatedSprite2D.play("air")
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_FORCE
	
	velocity.y += GRAVITY
	move_and_slide()
	
	velocity.x = lerp(velocity.x, 0.0, 0.2)
