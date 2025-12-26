# Note(rswager): this extends should match the class of the node you have attached the script too
extends Sprite2D

# Note(rswager): here we can initialzie node ('class') variables
# GdScript can support datatypes and will enforce them
# it doesn't need datatypes, but best practices say yes
var pos: Vector2 = Vector2.ZERO # = Vector2(0,0)
var test_scale: float = 1.0

# Note(rswager): here you can also define constants but they will only be local to this node and its children
const speed: int = 2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print('ready')
	pos = Vector2(0,0)
	# Note(rswager): We can use the extended classes variables/methods, by just calling them
	# if you want to look at them just select the note you are editing and look at the inspector tab
	position = pos
	
	var test_rotation: int = 45
	# rotations are in Radians
	# rotation = 45 (will not be 45 degrees)
	# rotation_degrees is in degrees
	rotation_degrees = test_rotation
	
	test_scale = 2
	scale = Vector2(test_scale,test_scale)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pos += Vector2(speed, speed)
	position = pos
	test_scale += .01
	scale = Vector2(test_scale,test_scale)
