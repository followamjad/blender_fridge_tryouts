extends Node3D

@onready var fridge: Node3D = $fridge
@onready var fridge_animation: AnimationPlayer = $fridge/AnimationPlayer
@onready var status_label: Label = $ui/Control/status_label

enum State {IDLE, OPENING}
var states: State = State.IDLE

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if states == State.IDLE:
		status_label.text = "PRESS E TO OPEN FRIDGE..."

func _physics_process(delta: float) -> void:
	if states == State.IDLE:
		if Input.is_action_just_pressed("interact"):
			states = State.OPENING
			status_label.text = "WAIT THE FRIDGE TO CLOSE FIRST!"
			fridge_animation.play("open fridge")
			

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	states = State.IDLE
