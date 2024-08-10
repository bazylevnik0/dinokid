extends MeshInstance3D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("move_backward"):
		position.x += 1
	if Input.is_action_pressed("move_forward"):
		position.x -= 1
	if Input.is_action_just_released("move_left"):
		rotation.y += PI/2
		print(rotation.y)
	if Input.is_action_just_released("move_right"):
		rotation.y -= PI/2
	pass
