extends Node2D
# Red - No implemenation (fails)
# Green - Write implemnention to pass (even if sloppy)
# Refactor - Make the code nice. Everything will work becasue test will still pass

var hp = 100;
var max_hp = 100;
var is_wearing_shield = false;

func return_apples():
	return "apples"

func return_bananas():
	return "bananas"

func take_damage(amount):
	# shiled reduces damage by 10%
	amount = int(amount * .9) if is_wearing_shield else amount
	hp = max(hp - amount,0)
