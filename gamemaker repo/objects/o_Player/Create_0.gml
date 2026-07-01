_ps = part_system_create()
_ptype1 = part_type_create()
timer = 0
part_type_shape( _ptype1, pt_shape_sphere );
part_type_sprite(_ptype1, Sprite2, false, false, false);
part_type_size( _ptype1, 1, 1, 0.005, 0 );
part_type_scale( _ptype1, 1, 1);
part_type_speed( _ptype1, 0, 0, 0, 0);
part_type_direction( _ptype1, 0, 0, 4, 0);
part_type_gravity( _ptype1, 0, 270);
part_type_orientation( _ptype1, 0, 0, 0, 0, false);
part_type_colour3( _ptype1, $7F7FFF, $FFFFFF, $FFEFBC );
part_type_alpha3( _ptype1, 1, 0.5, 0);
part_type_blend( _ptype1, true);
part_type_life( _ptype1, 25, 25)