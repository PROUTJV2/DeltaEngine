_tp = 0
y_base = y + 80
timer = 0
debounce = false
timer_incr = 1
draw_set_font(ft_CryptOfTomorrow)
_uniColor = shader_get_uniform(shdr_ColorOverlay, "u_colour");
_uniBrightness = shader_get_uniform(shdr_ColorOverlay, "u_brightness")
_color    = [1.0, 1.0, 0.0, 1.0];