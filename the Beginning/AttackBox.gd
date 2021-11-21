extends Area2D

var holder



func _on_AttackBox_area_entered(area):
	if area.is_in_group("HurtBox"):
		holder = area
		holder.take_damage(owner.damage)
	pass # Replace with function body.
