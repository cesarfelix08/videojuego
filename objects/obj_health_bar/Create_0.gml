// Evento Crear (Create) para obj_enemigo
max_health = 5; // Vida máxima
current_health = max_health; // Vida actual

// Método para recibir daño
function take_damage(amount) {
    current_health -= amount;
    if (current_health < 0) {
        current_health = 0;
        instance_destroy(); // Destruir enemigo si la salud llega a 0
    }
}

// Evento Colisión con obj_player en obj_enemigo
if (other.object_index == obj_player) { // Verifica que el objeto colisionado sea el jugador
    if (other.health > 0) { // Comprueba que el jugador tenga vida
        other.health -= 10; // Resta vida al jugador
    }

    // Comprobar si la vida del jugador llega a 0
    if (other.health <= 0) {
        // Aquí puedes manejar lo que ocurre cuando el jugador se queda sin vida
        instance_destroy(other); // Destruir el jugador o iniciar pantalla de Game Over
    }
}
