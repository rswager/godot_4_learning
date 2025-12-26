extends Node2D

const walk_speed: int = 500
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# input
	var direction = Input.get_vector("left","right","up","down")
	position += direction * walk_speed * delta
	
	# laser shooting input
	if Input.is_action_just_pressed("primary action"):
		print("<shoot laser>")
	# grenade shooting input
	if Input.is_action_just_pressed("secondary action"):
		print("<shoot grenade>")
