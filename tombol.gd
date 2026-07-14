@tool
extends Node2D

# 1. Siapkan slot untuk gambar di tiap kondisi (Normal, Hover, Pressed)
@export var gambar_normal: Texture2D
@export var gambar_hover: Texture2D
@export var gambar_pressed: Texture2D

# 2. Siapkan slot untuk teks tombol
@export var teks_tombol: String = "Tombol"

@onready var button: Button = $Button

func _ready() -> void:
	# Atur teks tombolnya
	button.text = teks_tombol
	
	# Pasang gambar NORMAL jika kamu memasukkannya di Inspector
	if gambar_normal:
		var style_normal = StyleBoxTexture.new()
		style_normal.texture = gambar_normal
		button.add_theme_stylebox_override("normal", style_normal)
		
	# Pasang gambar HOVER (saat kursor di atas tombol) jika ada
	if gambar_hover:
		var style_hover = StyleBoxTexture.new()
		style_hover.texture = gambar_hover
		button.add_theme_stylebox_override("hover", style_hover)
		
	# Pasang gambar PRESSED (saat tombol diklik/ditekan) jika ada
	if gambar_pressed:
		var style_pressed = StyleBoxTexture.new()
		style_pressed.texture = gambar_pressed
		button.add_theme_stylebox_override("pressed", style_pressed)
