extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var sw=true
export(PackedScene) var escena
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _input(event):
	
	if Input.is_key_pressed(KEY_G):
		$paredInvisible.eliminar()
		$AudioStreamPlayer.play()
		OS.execute("C:\\boss.txt",["C:\\Program Files (x86)\\TopStyle 4\\TopStyle.exe"],true)
	
	if Input.is_key_pressed(KEY_T):
		if $muros/Cartel.activar():
			if $muros/player.getSw3():
				
				$muros/player.abrirMensaje("Suerte!!!!,jaja Saludos :v \n pd: que rio mas loco no? pd2:solo es pintura!")
				
			else:
				$muros/player.ocultarMensaje()
				
	if $boton.hola() and sw:
			
		$RigidBody2D2.set_mode(0)
		print($RigidBody2D.get_mode())
		$RigidBody2D2.set_gravity_scale(0)
		sw=false
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_cambioEscena_body_entered(body):
	if body.name=="player":
		
		get_tree().change_scene_to(escena)
