extends CharacterBody3D

@export var max_speed_forward  = 50
@export var max_speed_backward = -1
@export var max_jump_height = 400
@export var fall_acceleration = 1000

var target_velocity = Vector3.ZERO
var target_speed = 0

var jump_is_started = false
var target_jump_height = 0

func _physics_process(delta):
	var direction = Vector3.ZERO

	if Input.is_action_pressed("move_right"):
		rotation.y -= PI/180
	if Input.is_action_pressed("move_left"):
		rotation.y += PI/180
	
	if Input.is_action_pressed("move_backward"):
		if is_on_floor():
			$Dino/AnimationPlayer.play("Animation")
			if not $SoundWalking.playing :
				$SoundWalking.play()
		target_speed -= 0.3;
		if target_speed <= max_speed_backward :
			target_speed = max_speed_backward;
		direction.x += 1
	if Input.is_action_just_released("move_backward"):
		target_speed = 0
	
	if Input.is_action_pressed("move_forward"):
		if is_on_floor():
			$Dino/AnimationPlayer.play("Animation")
			if not $SoundWalking.playing :
				$SoundWalking.play()
		target_speed += 0.3;
		if target_speed >= max_speed_forward :
			target_speed = max_speed_forward
		direction.x -= 1
	if Input.is_action_just_released("move_forward"):
		target_speed = 0
	
	
	if Input.is_action_pressed("jump"):
		if is_on_floor():
			target_jump_height=max_jump_height;
	if Input.is_action_just_released("jump"):
		if is_on_floor(): 
			jump_is_started = true
			$SoundJumping.play()
	if jump_is_started == true :
		direction.y += 5
		target_jump_height -= 5
		if target_jump_height <= 0 :
			target_jump_height = 0
			jump_is_started = false
		
	if direction != Vector3.ZERO:
		direction = direction.rotated(Vector3.UP, rotation.y)

	# Ground Velocity	
	target_velocity.x = direction.x * abs(target_speed)
	target_velocity.z = direction.z * abs(target_speed)
	target_velocity.y = direction.y 

	# Vertical Velocity
	if is_on_floor () :
		$Dino.visible = true
		$DinoJump.visible = false
	if not is_on_floor(): # If in the air, fall towards the floor. Literally gravity
		if jump_is_started == false :
			target_velocity.y = target_velocity.y - (fall_acceleration * delta)
		$Dino.visible = false
		$DinoJump.visible = true

	# Moving the Character	
	velocity = target_velocity
	move_and_slide()
