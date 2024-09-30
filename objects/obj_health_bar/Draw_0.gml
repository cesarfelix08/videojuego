// Variables para el medidor de vida
max_health = 5;
current_health = max_health; // Vida actual

// Variables de vida
max_health = 5; // Vida máxima
current_health = max_health; // Vida actual

// Método para recibir daño
function take_damage(amount) {
    current_health -= amount;
    if (current_health < 0) {
        current_health = 0;
    }
}

// Método para curarse
function heal(amount) {
    current_health += amount;
    if (current_health > max_health) {
        current_health = max_health;
    }
}
