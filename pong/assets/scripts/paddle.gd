extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position[0] = 40;
	position[1] = 0.5 * get_viewport_rect().size[1];

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position[1] = get_global_mouse_position()[1];
