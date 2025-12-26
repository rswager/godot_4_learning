extends Node2D

# Note(rswager): if you drag and drop a child node you get the following
# $Logo
# Note(rswager): if you drag and drop a child node while holding ctrl you get the following
@onready var logo: Sprite2D = $Logo
# Note(rswager): you could also give the path to the node you want to reference as well and
# use the get_node() 
# get_node("Logo")

var test_array: Array[String] = ["Test","Hello","Stuff"]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	logo.rotation_degrees = 90
	
	# For loop example
	for value in test_array:
		print(value)
		
	# you can print index as well
	print(test_array[0])

# Called every frame. 'delta' is the elapsed time since the previous frame.	
# Note(rswager): delta is super important becasue faster computers can generate more frames per second,
#     and conversely slower computer can generate less frames per second. If you hard code values to change
#     every frame, then things will fly off the screen in really fast computers and barely move at all 
#	  in slower computers.
#	Furthremore since some scenes can take longer to load then others you can get differences
#	  even on the same computers.
func _process(delta) -> void:
	logo.rotation_degrees+= (60*delta)
	 
	# flow -> if rotation > 180 -> return to 0
	if logo.rotation_degrees> 270:
		logo.rotation_degrees = 90
	# Note(rswager): we can use position, but pos (which is defined in logo.gd) overrides position
	#  so instead we can just call pos
	if logo.pos.x > 1000:
		logo.pos.x = 0
	
