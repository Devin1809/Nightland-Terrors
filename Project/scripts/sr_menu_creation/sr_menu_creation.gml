function CreateMenu(_buttons) {
	buttons = _buttons;
	for(var i = 0; i < array_length(buttons); i++) {
		instance_create_depth(buttons[i][0], buttons[i][1], -100, ob_button,
		{
			description : buttons[i][2],
			font_size : buttons[i][3],
			command: buttons[i][4]
		});
	}
}