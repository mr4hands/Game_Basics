extends KinematicCharacter2D

onready var attack_box = $Sprite/AttackBox/CollisionShape2D

func _on_HurtBox_on_take_damage(damage):
	take_damage(damage)
	pass # Replace with function body.

func attack():
	attack_box.disabled = false
	yield(get_tree().create_timer(0.2),"timeout")
	attack_box.disabled = true
