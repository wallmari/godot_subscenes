extends Node2D

const panel1Factory = preload("res://Submenus/Panel 1/Submenu Panel 1.tscn")
const panel2Factory = preload("res://Submenus/Panel 2/Submenu Panel 2.tscn")
const panel3Factory = preload("res://Submenus/Panel 3/Submenu Panel 3.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func switchPanel(newPanel):
	var panel = $Layout/MenuPanelContainer
	
	# Clear all existing submenu nodes (should only be one, but let's not take the chance)
	for node in panel.get_children():
		node.queue_free()
	
	# Add the one we want
	panel.add_child(newPanel)

func _on_Button1_pressed():
	switchPanel( panel1Factory.instance() )

func _on_Button2_pressed():
	switchPanel( panel2Factory.instance() )

func _on_Button3_pressed():
	switchPanel( panel3Factory.instance() )
