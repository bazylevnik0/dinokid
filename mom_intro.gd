extends VideoStreamPlayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
var intro_finished = false
func _process(delta: float) -> void:
	if intro_finished == true :
		get_tree().change_scene_to_file('res://homeisland.tscn')
	else:
		if not is_playing() :
			intro_finished = true
	pass
