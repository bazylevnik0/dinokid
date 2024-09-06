extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_danger_door_1_area_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		$Dino/Player.position = Vector3(-0.055, 1.257, 0.184)
	pass # Replace with function body.


func _on_danger_door_2_area_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		$Dino/Player.position = Vector3(-0.055, 1.257, 0.184)
	pass # Replace with function body.


func _on_danger_door_3_area_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		$Dino/Player.position = Vector3(-0.055, 1.257, 0.184)
	pass # Replace with function body.


func _on_bridge_area_1_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		$StaticBody3D/CollisionBridge1/AnimationPlayer.play("new_animation")
		print("hehe")
	pass # Replace with function body.
