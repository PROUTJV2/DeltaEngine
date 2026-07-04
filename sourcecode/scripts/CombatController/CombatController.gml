#region declaration

global.total_turn = 1
global.turn = 1
global.in_fight = false
global.team = ["Kris", "Susie", "Ralsei"]
global.enemies = ["placeholder", "placeholder", "placeholder"]
draw_set_colour(c_white);
draw_set_font(ft_CryptOfTomorrow);
draw_set_alpha(1);
show_debug_message("hi")

#endregion
initfight()
function initfight(){
	global.in_fight = true
	global.total_turn = 1
	global.turn = 1
	show_debug_message(global.in_fight)
}

function endfight(){
	global.in_fight = false
}
	
function stepturn(){
	if (global.in_fight == true){
	++(global.turn)
	++(global.total_turn)
	if (global.turn > 6){
		global.turn = 1
		}
	show_debug_message(global.turn)
	}
}