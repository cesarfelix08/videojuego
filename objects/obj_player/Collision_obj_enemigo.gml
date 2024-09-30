// Evento Colisión con obj_enemigo
if (health > 0) { // Verificar que la salud del jugador es mayor que 0
    health -= 10; // Restar vida al jugador
}

// Comprobar si la vida del jugador llega a 0
if (health <= 0) {
    // Aquí puedes manejar lo que ocurre cuando el jugador se queda sin vida
    instance_destroy(); // Destruir el jugador o iniciar pantalla de Game Over
}
