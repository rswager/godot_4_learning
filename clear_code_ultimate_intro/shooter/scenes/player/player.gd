extends CharacterBody2D

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
	
	# laser shooting input
	if Input.is_action_just_pressed("primary action"):
		print("<shoot laser>")
	# grenade shooting input
	if Input.is_action_just_pressed("secondary action"):
		print("<shoot grenade>")
