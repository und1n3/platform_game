extends Node3D

@export var offset = Vector3(0, 0.7, 0)
@export var duration = 2.0
@export var text = ""

func _ready():
	start_tween()

func start_tween():
	$Text.mesh.text = text
	var initial_position = $Text.position
	var tween = get_tree().create_tween().set_process_mode(Tween.TWEEN_PROCESS_PHYSICS)
	tween.set_loops().set_parallel(false)
	tween.tween_property($Text, "position", initial_position + offset, duration / 2)
	tween.tween_property($Text, "position", initial_position, duration / 2)

