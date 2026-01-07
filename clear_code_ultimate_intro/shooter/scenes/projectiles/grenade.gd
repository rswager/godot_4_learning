extends RigidBody2D

var speed = Vector2(0,0)

func _process(delta):
	# update the position of the laser
	position += speed * delta
