extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_danger_door_1_area_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		$Dino/Player.position = Vector3(-0.055, 2.2568, -1.795)
	pass # Replace with function body.


func _on_danger_door_2_area_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		$Dino/Player.position = Vector3(-0.055, 2.2568, -1.795)
	pass # Replace with function body.


func _on_danger_door_3_area_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		$Dino/Player.position = Vector3(-0.055, 2.2568, -1.795)
	pass # Replace with function body.


func _on_bridge_area_1_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		$StaticBody3D/CollisionBridge1/AnimationPlayer.play("new_animation")
	pass # Replace with function body.


func _on_bridge_area_2_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		$StaticBody3D/CollisionBridge2/AnimationPlayer.play("new_animation")
	pass # Replace with function body.


func _on_bridge_area_3_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		$StaticBody3D/CollisionBridge3/AnimationPlayer.play("new_animation")
	pass # Replace with function body.


func _on_bridge_area_4_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		$StaticBody3D/CollisionBridge4/AnimationPlayer.play("new_animation")
	pass # Replace with function body.


func _on_maze_trap_1_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		$Dino/Player.position = Vector3(-0.055, 2.2568, -1.795)
	pass # Replace with function body.


func _on_maze_trap_2_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		$Dino/Player.position = Vector3(-0.055, 2.2568, -1.795)
	pass # Replace with function body.


func _on_maze_trap_3_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		$Dino/Player.position = Vector3(-0.055, 2.2568, -1.795)
	pass # Replace with function body.


func _on_maze_trap_4_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		$Dino/Player.position = Vector3(-0.055, 2.2568, -1.795)
	pass # Replace with function body.


func _on_maze_trap_5_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		$Dino/Player.position = Vector3(-0.055, 2.2568, -1.795)
	pass # Replace with function body.


func _on_sun_zone_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		$Dino/Player.position = Vector3(-0.055, 2.2568, -1.795)
	pass # Replace with function body.




func _on_monument_exit_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		print("hehe")
		get_tree().change_scene_to_file('res://dino_shadowland.tscn')
	pass # Replace with function body.
