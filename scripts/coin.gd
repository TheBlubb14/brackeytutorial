extends Area2D

@onready var animation_player = $AnimationPlayer
@onready var game = $"../.."

func _on_body_entered(body):
	game.add_point()
	animation_player.play("pickup")
