extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if not $Music.playing :
		$Music.play()
	pass
	
func return_to_start():
	#$SoundRestart.play()
	#return platforms to start
	$BridgePlatforms/BridgePlatform1/AnimatableBody3D.position.y = 0
	$BridgePlatforms/BridgePlatform2/AnimatableBody3D.position.y = 0
	$BridgePlatforms/BridgePlatform3/AnimatableBody3D.position.y = 0
	$BridgePlatforms/BridgePlatform4/AnimatableBody3D.position.y = 0
	$BridgePlatforms/BridgePlatform1.on_platform = false
	$BridgePlatforms/BridgePlatform2.on_platform = false
	$BridgePlatforms/BridgePlatform3.on_platform = false
	$BridgePlatforms/BridgePlatform4.on_platform = false
	$Dino/Player.position = Vector3(0, 2.693, -15.441) # starting position
	$SoundRestart.play()
	pass
func _on_near_trap_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		return_to_start()
	pass # Replace with function body.

func _on_far_trap_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		return_to_start()
	pass # Replace with function body.


func _on_reset_area_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		return_to_start()
	pass # Replace with function body.


func _on_exit_area_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		get_tree().change_scene_to_file('res://movies/shadowland_outro/shadowland_outro.tscn')
	pass # Replace with function body.
