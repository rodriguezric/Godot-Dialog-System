# Dialog System


## Importing
Import the scene using preload:
```
const DialogBox = preload('res://path/to/Godot-Dialog-System/DialogBox.tscnn')
```

## Description
There are two functions for the DialogBox: `set_dialog` and `show_page`. `set_dialog` takes one argument, an array of strings. `show_page` initializes the DialogBox and pops the first string in the array for display.


## Features
The DialogBox will show text displaying a new character on a timer. Pressing `ui_action_accept` will "fast forward" the text, showing all the text. If all the text is already shown, it will pop the next text for display. Once finishing the last text it will `queue_free` DialogBox, removing it from the tree.


## Instantiating
To open a dialog, do the following:
```
var dialog = ['Some text', ...]
var dialog_box = DialogBox.instance()

add_child(dialog_box)
dialog_box.set_dialog(dialog)
dialog_box.show_page()
```
