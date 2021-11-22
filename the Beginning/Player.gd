extends KinematicCharacter2D

onready var main_attack = $Sprite/MainAttackBox/Main
onready var second_attack = $Sprite/MainAttackBox/Second
onready var attack_animation = $AnimationPlayer
func _on_HurtBox_on_take_damage(damage):
	take_damage(damage)


func attack(first_attack_type):
		attack_animation.play(first_attack_type)
