extends Node2D

enum mes {Bons, Buns}
var mes_state: mes = mes.Bons

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("interact"):
		if mes_state == mes.Bons:
			mes_state = mes.Buns
		if mes_state == mes.Buns:
			mes_state = mes.Bons
		
		print("pressed E")
		print(mes_state)
