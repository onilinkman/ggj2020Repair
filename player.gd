extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var salud=100
var resistencia=0

# Called when the node enters the scene tree for the first time.
func _ready():
	$Camera2D/cuadroText.ocultar()
	

func abrirMensaje(var cad):
	$Camera2D/cuadroText.mostrar()
	$Camera2D/cuadroText.setTexto(cad)
	sw3=false
	
func ocultarMensaje():
	$Camera2D/cuadroText.ocultar()
	sw3=true

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
const velocidad=380
var sw1=0
var sw2=0
var sw3=true

func getSw3():
	return sw3

func _physics_process(delta):
	if sw3:
		var movimiento=Vector2()
	
		if Input.is_key_pressed(KEY_W):
			movimiento+=Vector2(0,-1)
		if Input.is_key_pressed(KEY_S):
			movimiento+=Vector2(0,1)
		if Input.is_key_pressed(KEY_D):
			movimiento+=Vector2(1,0)
		if Input.is_key_pressed(KEY_A):
			movimiento+=Vector2(-1,0)
		movimiento=movimiento.normalized()*velocidad
		move_and_slide(movimiento)
		if movimiento.y>0:
			$AnimatedSprite.animation="caminataFrente"
			sw1=1
			sw2=0
		elif movimiento.y<0:
			$AnimatedSprite.animation="caminarEspalda"
			sw1=2
			sw2=0
		elif movimiento.x>0:
			$AnimatedSprite.animation="caminaDerecha"
			sw2=1
			sw1=0
		elif movimiento.x<0:
			$AnimatedSprite.animation="caminarIzquierda"
			sw2=2
			sw1=0
		else:
			if sw2==1:
				$AnimatedSprite.animation="paradaDerecha"
			if sw2==2:
				$AnimatedSprite.animation="paradaIzquierda"
			if sw1==1:
				$AnimatedSprite.animation="paradaFrente"
			if sw1==2:
				$AnimatedSprite.animation="Espalda"
	
func blee():
	$AnimatedSprite.animation="bleee"
	