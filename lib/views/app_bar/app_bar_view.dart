import 'package:flutter/material.dart';

class AppBarView extends StatelessWidget implements PreferredSizeWidget {
  const AppBarView({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  // Función para obtener el saludo según la hora del día
  String _getSaludo() {
    final hora = DateTime.now().hour;
    if (hora < 12) {
      return '¡Hola! ☀️';
    } else if (hora < 18) {
      return '¡Hola! 🌤️';
    } else {
      return '¡Hola! 🌙';
    }
  }

  @override
  Widget build(BuildContext context) {
    // Detectar si estamos en móvil o web basado en el ancho de pantalla
    final anchoPantalla = MediaQuery.of(context).size.width;
    final esMobil = anchoPantalla < 600;

    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      // Logo y texto "Comfenalco" siempre visibles
      title: Row(
        children: [
          ClipOval(
            child: Image.network(
              'https://play-lh.googleusercontent.com/KQvcG7JZrO7ZwEb-MDKkOWekFrWS30Xs8HKEhpqQ0xkG8hCFvdXw8rMH2sytHj6Ehg0',
              height: 36,
              width: 36,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 8),
          const Text(
            'Comfenalco',
            style: TextStyle(
              color: Color(0xFF0D47A1),
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
      // Contenido de la derecha (saludo + botón)
      actions: [
        if (esMobil)
          // En móvil, mostramos el saludo y el botón juntos
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _getSaludo(),
                  style: const TextStyle(
                    color: Color.fromARGB(255, 109, 109, 109),
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.3,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0D47A1),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    minimumSize: const Size(
                      0,
                      32,
                    ), // Tamaño mínimo más pequeño para móvil
                  ),
                  child: const Text(
                    'Iniciar sesión',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          )
        else
          // En web, saludo y botón tienen más espacio
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Row(
              children: [
                Text(
                  _getSaludo(),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0D47A1),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                  ),
                  child: const Text(
                    'Iniciar sesión',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
