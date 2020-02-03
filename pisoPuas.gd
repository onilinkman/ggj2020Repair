extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var sw=true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func descativarPiso():
	#if sw:
	if sw:
		$AnimatedSprite.animation="puasOff"
		$StaticBody2D.queue_free()
		sw=false