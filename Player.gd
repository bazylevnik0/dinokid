extends CharacterBody3D

# How fast the player moves in meters per second.
@export var speed = 0.1
# The downward acceleration when in the air, in meters per second squared.
@export var fall_acceleration = 1

var target_velocity = Vector3.ZERO


func _physics_process(delta):
	var direction = Vector3.ZERO

	if Input.is_action_just_released("move_right"):
		rotation.y -= PI/2
	if Input.is_action_just_released("move_left"):
		rotation.y += PI/2
	if Input.is_action_pressed("move_backward"):
		direction.x += 1
	if Input.is_action_pressed("move_forward"):
		direction.x -= 1

	if direction != Vector3.ZERO:
		direction = direction.normalized()
		direction = direction.rotated(Vector3.UP, rotation.y)
		#$Model.basis = Basis.looking_at(direction)

	# Ground Velocity	
	target_velocity.x = direction.x * speed
	target_velocity.z = direction.z * speed

	# Vertical Velocity
	if not is_on_floor(): # If in the air, fall towards the floor. Literally gravity
		target_velocity.y = target_velocity.y - (fall_acceleration * delta)

	# Moving the Character	
	velocity = target_velocity
	move_and_slide()
