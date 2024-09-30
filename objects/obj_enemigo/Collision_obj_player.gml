// Evento Colisión con obj_player
if (other.health > 0) { // Asegurarse de que la salud del jugador es accesible
    other.health -= 10; // Restar vida al jugador
}

// Comprobar si la vida del jugador llega a 0
if (other.health <= 0) {
    // Aquí puedes manejar lo que ocurre cuando el jugador se queda sin vida
    instance_destroy(other); // Destruir el jugador o iniciar pantalla de Game Over
}
