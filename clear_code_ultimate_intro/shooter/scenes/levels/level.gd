extends Node2D

# NOTE(rswager): STEP 1 - Before creating instances of scense we need to preload them
var laser_scene: PackedScene = preload("res://scenes/projectiles/laser.tscn")
var grenade_scene: PackedScene = preload("res://scenes/projectiles/grenade.tscn")

func _on_gate_player_entered_gate(body) -> void:
	print(body.name, " body has entered Gate!")

func _on_gate_player_exited_gate(body: Variant) -> void:
	print(body.name, " body has exited Gate!")

func _on_player_laser(pos, player_direction) -> void:
	# NOTE(rswager): STEP 2 - We need to create an instance/node
	var laser = laser_scene.instantiate() as Area2D
	# 1. update the laser position
	laser.position = pos
	laser.rotation_degrees = rad_to_deg(player_direction.angle())+90 # Add 90 to show we can rotate the object with code as well
	laser.direction = player_direction
	# 2. we have to move the laser
	# This is acomplished in the laser.gd script!
	
	# 3. Want to add the laser instance toa Node2D (keeps level scene clean)
	# NOTE(rswager): STEP 3 - We need to add the instance/node to the tree
	$Projectiles.add_child(laser)

func _on_player_grenade(pos, player_direction) -> void:
	# NOTE(rwager): we can tell Godot what to instantiate this as so auto complete works!
	var grenade = grenade_scene.instantiate() as RigidBody2D
	grenade.position = pos
	# Velocity will take delta into account
	grenade.linear_velocity = player_direction * grenade.speed
	# NOTE(rswager): The grenade will fall of the screne, we will adress that in next lesson
	$Projectiles.add_child(grenade)
	
	
