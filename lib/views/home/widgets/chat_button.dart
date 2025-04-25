import 'package:flutter/material.dart';

class ChatButton extends StatelessWidget {
  const ChatButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40, // Reducido de 56 a 40
      height: 40, // Reducido de 56 a 40
      decoration: const BoxDecoration(
        color: Color(0xFF0D47A1),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Chat iniciado'),
                duration: Duration(seconds: 2),
              ),
            );
          },
          borderRadius: BorderRadius.circular(20), // Cambia el radio si es necesario
          child: const Center(
            child: Icon(
              Icons.chat_bubble_outline,
              color: Colors.white,
              size: 20, // Reducido el tamaño del icono
            ),
          ),
        ),
      ),
    );
  }
}
