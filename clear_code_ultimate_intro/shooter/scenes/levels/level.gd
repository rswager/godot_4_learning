extends Node2D

# NOTE(rswager): STEP 1 - Before creating instances of scense we need to preload them
var laser_scene: PackedScene = preload("res://scenes/projectiles/laser.tscn")

func _on_gate_player_entered_gate(body) -> void:
	print(body.name, " body has entered Gate!")

func _on_gate_player_exited_gate(body: Variant) -> void:
	print(body.name, " body has exited Gate!")

func _on_player_laser() -> void:
	# NOTE(rswager): STEP 2 - We need to create an instance/node
	var laser = laser_scene.instantiate()
	# 1. update the laser position
	laser.position = $Player.position
	# 2. we have to move the laser
	# 3. Want to add the laser instance toa Node2D (keeps level scene clean)
	
	# NOTE(rswager): STEP 3 - We need to add the instance/node to the tree
	add_child(laser)

func _on_player_grenade() -> void:
	print("<grenade from level>")
