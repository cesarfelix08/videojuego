// Evento Dibujo (Draw)
draw_self(); // Dibuja el sprite del jugador

// Dibujar la barra de salud
var health_bar_width = 40; // Ancho de la barra de salud
var health_ratio = health / 100; // Suponiendo que la vida máxima es 100
draw_set_color(c_green);
draw_rectangle(x - 20, y - 20, x - 20 + (health_bar_width * health_ratio), y - 15, false);
