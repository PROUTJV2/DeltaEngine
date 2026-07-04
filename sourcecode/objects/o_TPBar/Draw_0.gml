if (100 > _tp)
	_tp = _tp + 1
else _tp = 100

// mockups and text
draw_sprite(spr_TPBarText, -1, x - 20, y - 65)
draw_sprite(spr_TPBarRed, -1, x + 11, y - 18)
if (_tp == 100){
	draw_sprite_ext(spr_TPBarTextMax, -1, x - 20, y - 10, 0.6, 0.6, 0, c_white, 1)
}
else draw_text(x - 28, y - 35, round(_tp))

if (_tp == 100 && debounce == false){
	debounce = true
	timer = 0
}
else if (_tp == 0 && debounce == true){
	debounce = false
}

if (_tp = 100){
	shader_set(shdr_ColorOverlay);
	shader_set_uniform_f_array(_uniColor, _color);
	shader_set_uniform_f_array(_uniBrightness, [timer/100])
}

top = sprite_height - 1.93 * _tp
height = 1.93 * _tp
draw_y = y_base - 1.93 * _tp
draw_sprite_part(sprite_index, image_index, 0, top, sprite_width, height, x, draw_y)

shader_reset();

if (timer == 0){
	timer_incr = 1
}
if (timer >= 100){
	timer_incr = -1
}
timer = timer + timer_incr
