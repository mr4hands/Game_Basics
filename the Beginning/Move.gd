#Move.gd
extends State

func physics_update(delta: float) -> void:	
	owner.speed = 100
	owner.move()
	if owner.velocity == Vector2.ZERO:
		state_machine.transition_to("Idle")
	if Input.is_action_just_pressed("run"):
		state_machine.transition_to("Run")
	if Input.is_action_just_pressed("attack") or Input.is_action_just_pressed("2nd_attack"):
		state_machine.transition_to("Attack")
	
	
	
