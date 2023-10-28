extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	#apply_impulse(Vector2(force, 0)) # one time effect, l'impulsion provoque un déplacement qui se ralentit
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	var force: int = 500
	if Input.is_action_pressed("move_right"):
		apply_force(Vector2(force, 0))
	if Input.is_action_pressed("move_left"):
		apply_force(Vector2(-force, 0))
	if Input.is_action_pressed("move_up"):
		apply_force(Vector2(0, -force))
	if Input.is_action_pressed("move_down"):
		apply_force(Vector2(0, force))
		
	print(Engine.get_frames_per_second())
