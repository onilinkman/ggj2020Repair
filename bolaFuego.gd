extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var vel=2
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	

var coordenada=Vector2(0,0)
var sw=false


func _physics_process(delta):
	
	var mousePos=get_local_mouse_position()
	$Sprite.position=$Sprite.position.linear_interpolate(coordenada,delta*vel)

	#pass
	# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if Input.is_key_pressed(KEY_J):
		coordenada=get_local_mouse_position()
		sw=true

func setCoordenada(var coor):
	coordenada=coor
	

func _on_VisibilityNotifier2D_screen_exited():
	if sw1:
		queue_free()

var sw1=false

func _on_VisibilityEnabler2D_screen_entered():
	sw1=true

var sw2=false

func _on_Area2D_body_entered(body):
	if body.name=="player":
		sw2=true
		queue_free()
