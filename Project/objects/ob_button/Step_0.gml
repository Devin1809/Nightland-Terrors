if(mouse_x >= x - (sprite_width/2) && mouse_x <= x + (sprite_width/2)
&& mouse_y >= y - (sprite_height/2) && mouse_y <= y + (sprite_height/2))
{
	sprite_index = sp_button_active;
	if(mouse_check_button(mb_left)) 
	{
		sprite_index = sp_button_held;
	}
	if(mouse_check_button_released(mb_left))
	{
		switch(command) {
			case -1:
            break;
			case "Quit":
			game_end();
			break;
			default:
			room_goto(command);
			break;
		}
	}
};
if(mouse_x < x - (sprite_width/2) || mouse_x > x + (sprite_width/2)
|| mouse_y < y - (sprite_height/2) || mouse_y > y + (sprite_height/2))
{
	sprite_index = sp_button_inactive;
};