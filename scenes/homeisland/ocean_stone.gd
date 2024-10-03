extends Node3D

var rng = RandomNumberGenerator.new()

var direction
var delta_move
@export var delta_move_max = rng.randf_range(15.0, 30.0)
@export var delta_move_speed = rng.randf_range(0.05, 0.1)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var random_number = rng.randi_range(0, 1)
	if random_number == 0 :
		direction = "right"
	if random_number == 1 :
		direction = "left"
	delta_move = delta_move_max
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if direction == "right":
		$AnimatableBody3D.position.x += delta_move_speed
		delta_move -= delta_move_speed
		if delta_move <= 0 :
			delta_move = delta_move_max
			direction = "left"
	if direction == "left":
		$AnimatableBody3D.position.x -= delta_move_speed
		delta_move -= delta_move_speed
		if delta_move <= 0 :
			delta_move = delta_move_max
			direction = "right"
	pass
