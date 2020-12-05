extends RichTextLabel

var dialog = []


func _ready():
	set_process_input(true)


func _input(event):
	if event.is_action_pressed("ui_accept"):
		handle_page()

func handle_page():
	if finished_page():
		handle_next_page()
	else:
		fast_forward()

func handle_next_page():
	if has_more_pages():
		show_next_page()
	else:
		remove_dialog()

func show_page():
	show_next_page()
	
	
func show_next_page():
	bbcode_text = dialog.pop_front()
	set_visible_characters(0)


func add_page(text):
	dialog.push_back(text)


func set_dialog(_dialog):
	dialog = _dialog


func fast_forward():
	set_visible_characters(get_total_character_count())


func finished_page():
	return get_visible_characters() > get_total_character_count()


func has_more_characters():
	return !finished_page()


func has_more_pages():
	return dialog.size() > 0


func remove_dialog():
	get_parent().queue_free()


func _on_DialogBox_set_dialog(_dialog):
	set_dialog(_dialog)


func _on_DialogBox_show_page():
	show_page()


func _on_Timer_timeout():
	set_visible_characters(get_visible_characters() + 1)
	
