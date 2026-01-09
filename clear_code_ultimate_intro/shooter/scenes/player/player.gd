extends CharacterBody2D

signal laser(pos, direction)
signal grenade(pos, direction)

var can_laser: bool = true
var can_grenade: bool = true

const walk_speed: int = 500
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	# input
	var direction = Input.get_vector("left","right","up","down")
	# with a characterbody we don't want to directly update the position
	# position += direction * walk_speed * delta
	
	# you want to update the velocity and let move_and_slide move everything
	velocity = direction * walk_speed
	# Move and slide automatically includes delta
	move_and_slide()
	
	# rotate player
	# Always want the player to look at the mouse
	look_at(get_global_mouse_position()) # look_at will rotate to the player to the mouse
	
	var player_direction = (get_global_mouse_position() - position).normalized() # need to normalize otherwise the numbers will be massive!
	
	# laser shooting input
	if Input.is_action_just_pressed("primary action") and can_laser:
		# randomly selecte a marker 2d for the laser start
		var laser_markers = $LaserStartPositions.get_children()
		var selected_laser_marker = laser_markers[randi() % laser_markers.size()]
		can_laser = false
		$LaserTimer.start()
		# Now we need to pass the GLOBAL position of the laser (otherwise it will spawn off screen ...etc)
		laser.emit(selected_laser_marker.global_position, player_direction)

		
	# grenade shooting input
	if Input.is_action_just_pressed("secondary action") and can_grenade:
		var grenade_position = $LaserStartPositions/CenterMarker2D.global_position
		# The vector from the player to the mouse (position = players position)
		can_grenade = false
		$GrenadeTimer.start()
		grenade.emit(grenade_position, player_direction)


func _on_laser_timer_timeout() -> void:
	can_laser = true


func _on_grenade_timer_timeout() -> void:
	can_grenade = true
