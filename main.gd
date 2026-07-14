@tool
extends Node2D
@onready var bg : AnimationPlayer = $CanvasLayer3/AnimationPlayer
@onready var popup : PopupPanel = $PopupPanel
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	bg.play("bg1")
	popup.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_audio_stream_player_ready() -> void:
	pass # Replace with function body.


func tutup() -> void:
	popup.hide()


func popup_muncul() -> void:
	popup.popup_centered()
