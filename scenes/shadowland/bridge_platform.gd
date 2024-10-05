extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

var on_platform = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (on_platform == true) :
		$AnimatableBody3D.position.y -= 0.1
	pass


func _on_area_on_platform_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		on_platform = true
	pass # Replace with function body.
