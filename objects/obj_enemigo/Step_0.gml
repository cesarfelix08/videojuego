// Evento Paso para obj_enemigo

// Mover el enemigo de izquierda a derecha
x += speed * direction; // Mover en la dirección actual

// Cambiar dirección al tocar el suelo (piso)
if (place_meeting(x, y, obj_piso)) {
    // Cambiar la dirección al colisionar con el piso
    direction *= -1; // Cambiar dirección
}

// Opcional: Verificar si el enemigo ha llegado al borde de la habitación y cambiar dirección
if (x < 0 || x > room_width) {
    direction *= -1; // Cambiar dirección si sale de la habitación
}
