extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if not $Music.playing :
		$Music.play()
	pass
	
	
func _on_reset_area_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		$Dino/Player.position = Vector3(0, 3.658, 0) # starting position
		$SoundRestart.play()
	pass # Replace with function body.


func _on_exit_area_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		get_tree().change_scene_to_file('res://movies/shadowland_intro/shadowland_intro.tscn')
	pass # Replace with function body.
