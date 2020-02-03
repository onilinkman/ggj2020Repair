extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var sw=false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
# ni yo entendere porque puse este hola en el futuro :v
func hola():
	return sw

func _on_Area2D_body_entered(body):
	$AnimatedSprite.animation="botonOn"
	if !sw :
		
		$AudioStreamPlayer.play(1.0)
	sw=true
	
	print(body.name)
	
