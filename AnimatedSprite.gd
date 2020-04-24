extends AnimatedSprite



func _on_Player_animate(motion):
	if motion.y < 0: # if y is neg
		play("jump")
	elif motion.x > 0: # if we are not moving right
		play("move")
		flip_h = false
	elif motion.x < 0: # if we are not moving right
		play("move")
		flip_h = true
	else:
		play("idle")
