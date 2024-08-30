extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$StaticBody3D/homeisland/AnimationPlayer.play("Animation")
	pass

func _on_mountain_inside_area_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		$Text.text = "Mom: Dino, please go outside and find me..."
		$Text.visible = true
	pass # Replace with function body.
	

func _on_mountain_inside_area_body_exited(body: Node3D) -> void:
	if body.name == "Player" :
		$Text.text = "..."
		$Text.visible = false
	pass # Replace with function body.
	
	
func _on_mountain_down_area_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		$Dino/Player.position = Vector3(-0.053, 1.108, 0.386)
	pass # Replace with function body.


func _on_river_water_area_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		$Dino/Player.position = Vector3(-0.053, 1.108, 0.386)
	pass # Replace with function body.


func _on_beach_place_body_entered(body: Node3D) -> void:
	if body.name == "Player" :
		$Text.text = "Dino: So sunny day to play on the beach but I must to find my mom..."
		$Text.visible = true
	pass # Replace with function body.


func _on_beach_place_body_exited(body: Node3D) -> void:
	if body.name == "Player" :
		$Text.text = "..."
		$Text.visible = false
	pass # Replace with function body.
