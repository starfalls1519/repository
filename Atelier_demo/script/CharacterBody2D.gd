extends CharacterBody2D



var speed = 100  # Player movement speed
var inventory = {"Herb": 0, "Mineral": 0, "Healing Potion": 0}  # Simple inventory
var recipes = {"Healing Potion": {"Herb": 2, "Mineral": 1}}  # One recipe

func _physics_process(delta):
	# Movement
	var direction = Vector2.ZERO
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1
	velocity = direction.normalized() * speed
	move_and_slide()
