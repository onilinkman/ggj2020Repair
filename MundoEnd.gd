extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export(PackedScene) var bolasFuego
# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	$tiempoBolasFuego.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_tiempoBolasFuego_timeout():
	$Path2D/PathFollow2D.set_offset(randi())
	var fuego=bolasFuego.instance()
	add_child(fuego)
	fuego.position=$Path2D/PathFollow2D.position
	fuego.setCoordenada(Vector2(0,rand_range(1000,3000)))

var sw=true
var cont=0
var limite=60
var cont2=0

func _on_Area2D_area_entered(area):
	print(area.name)
	if area.name=="Area2Dfueg":
		if sw:
			limite=rand_range(1,8)
			sw=false
			$player.blee()
			$player.abrirMensaje("Descuida, No puedo morir,pero puede pasar otra cosa, Es aleatorio")
		cont+=1
		if cont>limite:
			var arr=["uno","dos","tres"]
			var c= rand_range(1,4)
			print(c)
			if c>1 and c<2:
				print(arr[0])
				OS.window_minimized=true
			if c>2 and c<3:
				OS.window_maximized=true
			if c>3 and c<4:
				get_tree().quit()
	if area.name=="Area2D":
		if cont2<=4:
			$Path2D2/PathFollow2D.set_offset(randi())
			$boton.position=$Path2D2/PathFollow2D.position
			cont2+=1
		else:
			$player.blee()
			$tiempoBolasFuego.stop()
			var cad=str(OS.get_power_percent_left())
			$player.abrirMensaje("El juego cerrara en 10 segundos. gracias por ayudar, aunque el suministo de energio es del " +cad+ " No se te lo hace familiar? mira tu bateria")
			$tiempoCerrado.start()
	
func _input(event):
	if Input.is_key_pressed(KEY_T):
		if !$player.getSw3():
			$player.ocultarMensaje()
	if Input.is_key_pressed(KEY_J):
		var cad= " sd"
		cad+=str(OS.get_power_percent_left())
		print(cad)
		print(OS.get_power_percent_left())


func _on_tiempoCerrado_timeout():
	get_tree().quit()
