#Attack.gd
extends State

func physics_update(delta: float) -> void:
	print("Attacking state")
	owner.attack()
	if owner.velocity == Vector2.ZERO:
		state_machine.transition_to("Idle")
	else:
		state_machine.transition_to("Move")
	
	
