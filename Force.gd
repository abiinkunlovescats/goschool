extends Node2D

onready var rvl = $Label2
onready var lvl = $Label
onready var ml =$Label3
onready var Sugar = $Sugar

var force = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	ml.set_text("MASS: 1")
	lvl.set_text("Applied Force: 0 N")
	rvl.set_text("Friction: 0 N") # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#var velocity = Slider.value;
	#Sugar.add_force(Vector2(velocity,0),Vector2(velocity,0))
#	pass





func _on_Mass_value_changed(value):
	Sugar.mass = value;
	ml.set_text("MASS: %d" % [value])
# Replace with function body.


func _physics_process(delta):
	Sugar.applied_force.x = force;
	# Replace with function body.




func _on_Velocity_Left_value_changed(value):
	
	lvl.set_text("Applied Force: %d N" % [value - 200])
	force = value;
	var friction = (value -200) * Sugar.mass * 0.3;
	rvl.set_text("Friction: %d N" % [friction])
	 # Replace with function body.


func _on_Button_pressed():
	get_tree().reload_current_scene() # Replace with function body.


func _on_Def_pressed():
	$Popup.popup();
	get_tree().paused = true
	
	 # Replace with function body.



	
	 # Replace with function body.





func _on_Popup_popup_hide():
	get_tree().paused = false # Replace with function body.


func _on_Menu_pressed():
	 get_tree().change_scene("res://Power.tscn")
	 # Replace with function body.
