extends CharacterBody3D

@export var max_speed_forward  = 10
@export var max_speed_backward = -1
@export var fall_acceleration = 25

var target_velocity = Vector3.ZERO
var target_jump_height = 0
var target_speed = 0


func _physics_process(delta):
	var direction = Vector3.ZERO

	if Input.is_action_just_released("key_a"):		
		$Model/AnimationPlayer.play("Hor")
	if Input.is_action_just_released("key_b"):
		$Model/AnimationPlayer.play("Ver")
	if Input.is_action_just_released("move_right"):
		rotation.y -= PI/2
	if Input.is_action_just_released("move_left"):
		rotation.y += PI/2
	
	if Input.is_action_pressed("move_backward"):
		$Model/AnimationPlayer.play("Animation")
		target_speed -= 0.1;
		if target_speed <= max_speed_backward :
			target_speed = max_speed_backward;
		direction.x += 1
	if Input.is_action_just_released("move_backward"):
		target_speed = 0
	
	if Input.is_action_pressed("move_forward"):
		$Model/AnimationPlayer.play("Animation")
		target_speed += 0.1;
		if target_speed >= max_speed_forward :
			target_speed = max_speed_forward
		direction.x -= 1
	if Input.is_action_just_released("move_forward"):
		target_speed = 0
	
	
	if Input.is_action_pressed("jump"):
		target_jump_height+=1	
	if Input.is_action_just_released("jump"):
		direction.y += target_jump_height
		target_jump_height = 0
		
	if direction != Vector3.ZERO:
		direction = direction.rotated(Vector3.UP, rotation.y)

	# Ground Velocity	
	target_velocity.x = direction.x * abs(target_speed)
	target_velocity.z = direction.z * abs(target_speed)
	target_velocity.y = direction.y * 1

	# Vertical Velocity
	if not is_on_floor(): # If in the air, fall towards the floor. Literally gravity
		target_velocity.y = target_velocity.y - (fall_acceleration * delta)

	# Moving the Character	
	velocity = target_velocity
	move_and_slide()
