x = 106 + (characterid) * 213
sprite_index = asset_get_index("PortraitBox" + global.team[characterid])
if (characterid + 1 == global.turn){
	timer_2 = 0
	y = 361 - 32 * animcurve_channel_evaluate(CubicEaseOut, timer/25);
	++(timer);
}
else {
	timer = 0
	y = 329 + 32 * animcurve_channel_evaluate(CubicEaseOut, timer_2/25);
	++(timer_2)
}

draw_self();