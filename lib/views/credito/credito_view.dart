import 'package:flutter/material.dart';

class CreditoView extends StatelessWidget {
  const CreditoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.attach_money,
            size: 80,
            color: Color(0xFF0D47A1),
          ),
          SizedBox(height: 16),
          Text(
            'Sección de Crédito',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              'Gestiona tus créditos, consulta tasas y solicita nuevos préstamos de manera fácil y rápida.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
