extends Control

# "GlobalVariables" is an autoloaded (Project->Settings->Autoload) singleton

# Called when the node enters the scene tree for the first time.
func _ready():
	updateMyVar1Label()
	
func updateMyVar1Label():
	$VBoxContainer/HBoxContainer/lab_val_myvar1.text = String(GlobalVariables.myValue1)
	
func _on_but_dec_myvar1_pressed():
	# Ensure the value doesn't go below one
	GlobalVariables.myValue1 = max(1, GlobalVariables.myValue1-1)
	updateMyVar1Label()

func _on_but_inc_myvar1_pressed():
	# Ensure the value doesn't go above 9
	GlobalVariables.myValue1 = min(9, GlobalVariables.myValue1+1)
	updateMyVar1Label()
