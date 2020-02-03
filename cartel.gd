extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var sw=false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func activar():
	print(sw)
	return sw

func _on_Area2D_body_entered(body):
	if body.name=="player":
		sw=true


func _on_Area2D_body_exited(body):
	sw=false
