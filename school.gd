extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$StaticBody3D/school/AnimationPlayer.play("Animation")
	$StaticBody3D/CollisionRotate.rotate_y(0.01)
	pass
