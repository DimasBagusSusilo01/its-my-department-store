@tool
extends Node2D
@onready var bg : AnimationPlayer = $CanvasLayer3/AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	bg.play("bg1")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
