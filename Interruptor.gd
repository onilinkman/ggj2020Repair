extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var sw=false
# Called when the node enters the scene tree for the first time.
func _ready():
	sw=false # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func cambiarAnimacion(var sw1):
	if sw1:
		
		if $AnimatedSprite.animation!="interruptorOn":
			$AudioStreamPlayer.play()
		$AnimatedSprite.animation="interruptorOn"
	

func activar():
	print(sw)
	return sw

func _on_Area2D_body_entered(body):
	
	if body.name=="player":
		sw=true
	print(sw)


func _on_Area2D_body_exited(body):
	sw=false
	print(sw)
