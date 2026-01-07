extends Area2D

# NOTE(rswager): If you export it will give you a parameter in the Inspector of the node!
@export var speed: int = 1_000
var direction: Vector2 = Vector2.UP

func _process(delta):
	# update the position of the laser
	position += direction * speed * delta
