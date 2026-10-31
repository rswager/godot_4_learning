extends GutTest

var Character = load("res://character.gd")
var _character = null;


func before_each():
	# This runs before any test
	_character = Character.new();
	pass;
	
func after_each():
	# This runs after each test
	_character.free() # this will stop the orphan errors we keep getting
	pass


# Just like pytest, if it starts with test_ it will test it
func test_return_apples():
	var result = _character.return_apples();
	assert_eq("apples", result)
	assert_ne("bananas", result)
	pass;

func test_return_bananas():
	var result = _character.return_bananas();
	assert_eq("bananas",result)
	assert_ne("apples", result)
	
func test_take_damage():
	_character.hp = 100
	_character.take_damage(10)
	assert_eq(_character.hp, 90, "HP Should be 90")

func test_take_damage_not_below_zero():
	_character.hp = 100
	_character.take_damage(101)
	assert_gte(_character.hp, 0, "We cannot have negative health!")
	
