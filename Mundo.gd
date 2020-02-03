extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export(PackedScene) var escen
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass

func _input(event):
	if Input.is_key_pressed(KEY_P):
		#get_tree().quit()
		if get_tree().paused==false:
			get_tree().paused=true
		else:
			get_tree().paused=false
	if Input.is_key_pressed(KEY_T):
		print($TileMap/Node2D3.activar())
		if $Node2D.hola() and $Node2D2.hola() and $TileMap/Node2D3.activar():
			$TileMap/Node2D3.cambiarAnimacion($Node2D.hola() and $Node2D2.hola() and $TileMap/Node2D3.activar())
			print($TileMap/Node2D3.activar())
			
			$pisoPuas1.descativarPiso()
			$pisoPuas.descativarPiso()
			$pisoPuas2.descativarPiso()
			$pisoPuas3.descativarPiso()
			
		elif ($Node2D.hola() or $Node2D2.hola()) and $TileMap/Node2D3.activar():
			print("Aun no se activa")
			get_tree().quit()
		elif $TileMap/Cartel.activar():
			if $TileMap/player.getSw3():
				$TileMap/player.abrirMensaje("Presiona los dos botones que estan ADELANTE y tira de la palanca :v")
			else :
				$TileMap/player.ocultarMensaje()

func _on_pasarEscena_body_entered(body):
	if body.name=="player":
		get_tree().change_scene_to(escen)
	

