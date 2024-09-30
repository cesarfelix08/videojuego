// Evento Paso para obj_player

// Inicializar velocidades
xspd = 0; // Reiniciar la velocidad horizontal
vspeed += gravity; // Aplicar gravedad

// MOVIMIENTO HORIZONTAL
if (keyboard_check(vk_right)) {
    xspd = move_spd;  // Mover a la derecha
} else if (keyboard_check(vk_left)) {
    xspd = -move_spd; // Mover a la izquierda
}

// SALTO
if (place_meeting(x, y + 1, obj_piso)) {
    // Si está en el suelo, permitir salto
    if (keyboard_check_pressed(vk_space)) {
        vspeed = -jump_spd; // Iniciar el salto
    }
} else {
    // Si no está en el suelo, aplicar gravedad
    vspeed += gravity; 
}

// MOVER EN EL EJE VERTICAL (aplicar velocidad vertical)
y += vspeed;

// DETECCIÓN DE COLISIÓN CON EL SUELO
if (place_meeting(x, y + vspeed, obj_piso)) {
    while (!place_meeting(x, y + sign(vspeed), obj_piso)) {
        y += sign(vspeed); // Ajustar la posición para estar justo encima del suelo
    }
    vspeed = 0; // Detener la velocidad vertical
}

// APLICAR MOVIMIENTO HORIZONTAL
x += xspd;

// CAMBIO DE SPRITES SEGÚN ESTADO
if (xspd != 0) {
    if (xspd > 0) {
        sprite_index = sprite_right; // Mover a la derecha
    } else {
        sprite_index = sprite_left;  // Mover a la izquierda
    }
} else {
    sprite_index = sprite_idle; // Reposo
}

// Cambiar el sprite cuando esté en el aire
if (!place_meeting(x, y + 1, obj_piso)) {
    if (vspeed < 0) {
        sprite_index = sprite_salto; // Sprite de salto hacia arriba
    } else {
        sprite_index = sprite_saltol; // Sprite de salto hacia abajo
    }
}

// Ajustar posición inicial sobre el piso
var piso_instance = instance_nearest(x, y, obj_piso);
if (piso_instance != noone) {
    y = piso_instance.y - sprite_height; // Colocar al jugador justo sobre el suelo
}

