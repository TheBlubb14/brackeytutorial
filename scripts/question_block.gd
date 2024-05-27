extends StaticBody2D

@onready var animation_player = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_area_2d_body_entered(body):
	print("collider")
	animation_player.play("explode")
