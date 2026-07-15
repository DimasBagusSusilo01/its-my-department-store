@tool
extends Node2D
@onready var bg : AnimationPlayer = $CanvasLayer3/AnimationPlayer
@onready var popup : PopupPanel = $PopupPanel
@onready var klik : AudioStreamPlayer = $AudioStreamPlayer2
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	bg.play("bg1")
	popup.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_audio_stream_player_ready() -> void:
	pass # Replace with function body.




func popup_muncul() -> void:
	klik.play()
	popup.popup_centered()


func tutup() -> void:
	klik.play()
	popup.hide()


func pengatur_bg(value: float) -> void:
	var bus_index =  AudioServer.get_bus_index("Master")
	AudioServer.set_bus_volume_db(bus_index,linear_to_db(value))


func _on_h_slider_2_value_changed(value: float) -> void:
	var bus_index2 = AudioServer.get_bus_index("klik")
	AudioServer.set_bus_volume_db(bus_index2,linear_to_db(value))


func quit() -> void:
	get_tree().quit()
