extends Node2D

# Note(rswager): if you drag and drop a child node you get the following
# $Logo
# Note(rswager): if you drag and drop a child node while holding ctrl you get the following
#@onready var logo: Sprite2D = $Logo
# Note(rswager): you could also give the path to the node you want to reference as well and
# use the get_node() 
# get_node("Logo")

# Note(rswager): if you give your notes unique names you can then target by unique name in right click
#  $"../Sprite2D/Sprite2D2/Sprite2D3/Target"
#	vs
#  %Target

var test_array: Array[String] = ["Test","Hello","Stuff"]

# Called when the node enters the scene tree for the first time.
# Note(rswager): This only gets called once and then it is done!
func _ready() -> void:
	pass
	#logo.rotation_degrees = 90
	
	## For loop example
	#for value in test_array:
		#print(value)
		#
	## you can print index as well
	#print(test_array[0])

# Called every frame. 'delta' is the elapsed time since the previous frame.	
# Note(rswager): delta is super important becasue faster computers can generate more frames per second,
#     and conversely slower computer can generate less frames per second. If you hard code values to change
#     every frame, then things will fly off the screen in really fast computers and barely move at all 
#	  in slower computers.
#	Furthremore since some scenes can take longer to load then others you can get differences
#	  even on the same computers.
func _process(_delta) -> void:
	pass
	#logo.rotation_degrees+= (60*delta)
	 
	# flow -> if rotation > 180 -> return to 0
	#if logo.rotation_degrees> 270:
	#	logo.rotation_degrees = 90
	# Note(rswager): we can use position, but pos (which is defined in logo.gd) overrides position
	#  so instead we can just call pos
	#if logo.pos.x > 1000:
	#	logo.pos.x = 0
	
	# Note(rswager): if you ctrl+left_click key words you will get documentation
	#   is-action-pressed -> returns true while button is held down and initially pressed
	#	is-action-just-pressed -> returns true only on initial press
	# print(Input.is_action_pressed("left"))
	
func test_function() -> void:
	print("this is a test function")
