import 'package:flutter/material.dart';

class OtrosView extends StatelessWidget {
  const OtrosView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.more_horiz,
            size: 80,
            color: Color(0xFF0D47A1),
          ),
          SizedBox(height: 16),
          Text(
            'Más Servicios',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              'Descubre más servicios y beneficios que Comfenalco tiene para ti y tu familia.',
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
