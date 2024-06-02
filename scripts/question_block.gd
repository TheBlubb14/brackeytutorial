extends StaticBody2D

@onready var animation_player = $AnimationPlayer
const COIN = preload("res://scenes/coin.tscn")
@onready var coins = $"../Coins"
@onready var game = $".."

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func spawn_coiny():
	var instance = COIN.instantiate()
	instance.request_ready()
	#coins.add_child(instance)
	add_child(instance)
	#game.add_child(instance)

func _on_area_2d_body_entered(body):
	spawn_coiny()
	animation_player.play("explode")
