extends Node2D

@export var x_offset = 40
@export var side = 0
@export var player = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var referenceOrigin
	match side:
		0:
			referenceOrigin = 0
		1:
			referenceOrigin = get_viewport_rect().size[0] - 20
			x_offset *= -1
	
	position[0] = referenceOrigin + x_offset
	position[1] = 0.5 * get_viewport_rect().size[1]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if player:
		position[1] = movePlayerPaddle()[1]
	else:
		position[1] = moveNpcPaddle()[1]

func movePlayerPaddle() -> Vector2:
	return get_global_mouse_position()

func moveNpcPaddle() -> Vector2:
	# Replace with actual AI movement code
	return position # this is garbage - replace!
