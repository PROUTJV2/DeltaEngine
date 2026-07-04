#region animate

if (characterid + 1 == global.turn){
	timer_2 = 0
	y = 361 - 32 * animcurve_channel_evaluate(CubicEaseOut, timer/25);
	if (25 >= timer){
		++(timer);
	}
}
else {
	timer = 0
	y = 329 + 32 * animcurve_channel_evaluate(CubicEaseOut, timer_2/25);
	if (25 >= timer_2){
		++(timer_2);
	}
}

#endregion 

draw_self();