extends StaticBody2D

# CUSTOMER SIGNAL!!
signal player_entered_gate(body)
signal player_exited_gate(body)

func _on_area_2d_body_entered(body: Node2D) -> void:
	player_entered_gate.emit(body)

func _on_area_2d_body_exited(body: Node2D) -> void:
	player_exited_gate.emit(body)
