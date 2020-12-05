extends Polygon2D

signal show_page
signal set_dialog
	
func show_page():
	emit_signal('show_page')
	
	
func set_dialog(dialog):
	emit_signal('set_dialog', dialog)
