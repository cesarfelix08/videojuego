// Evento Crear para obj_player

// Inicializar variables de salud
health = 100; // Salud del jugador

// Inicializar variables de movimiento
move_spd = 4; // Velocidad de movimiento
jump_spd = 10; // Velocidad de salto
gravity = 0.5; // Gravedad
is_jumping = false; // Estado de salto
vspeed = 0; // Velocidad vertical
xspd = 0; // Velocidad horizontal

// Inicializar sprites
sprite_idle = spr_constructor_idle;
sprite_right = spr_constructor_right;
sprite_left = spr_constructor_left;
sprite_salto = spr_constructor_up;
sprite_saltol = spr_constructor_down;

