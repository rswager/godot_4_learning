extends Node2D

func _on_gate_player_entered_gate(body) -> void:
	print(body.name, " body has entered Gate!")

func _on_gate_player_exited_gate(body: Variant) -> void:
	print(body.name, " body has exited Gate!")

func _on_player_laser() -> void:
	print("<laser from level>")

func _on_player_grenade() -> void:
	print("<grenade from level>")
