extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func ocultar():
	hide()

func mostrar():
	show()

func _input(event):
	pass
		#$WindowDialog.set_title("hola")
func setTexto(var cad):
	$TextEdit.set_text(cad)