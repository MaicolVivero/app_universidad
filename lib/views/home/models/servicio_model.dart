import 'package:flutter/material.dart';

class Servicio {
  final IconData icon;
  final String title;
  final Color color;

  Servicio({
    required this.icon,
    required this.title,
    required this.color,
  });
}

final List<Servicio> servicios = [
  Servicio(
    icon: Icons.discount_outlined,
    title: 'Cupones',
    color: const Color(0xFF9C27B0).withOpacity(0.2),
  ),
  Servicio(
    icon: Icons.people_outline,
    title: 'Subsidios',
    color: const Color(0xFF00BCD4).withOpacity(0.2),
  ),
  Servicio(
    icon: Icons.attach_money,
    title: 'Créditos',
    color: const Color(0xFFFFC107).withOpacity(0.2),
  ),
  Servicio(
    icon: Icons.description_outlined,
    title: 'Certificados',
    color: const Color(0xFFFFEB3B).withOpacity(0.2),
  ),
  Servicio(
    icon: Icons.flight_outlined,
    title: 'Recreación',
    color: const Color(0xFF009688).withOpacity(0.2),
  ),
  Servicio(
    icon: Icons.shopping_cart_outlined,
    title: 'Ventas',
    color: const Color(0xFF2196F3).withOpacity(0.2),
  ),
  Servicio(
    icon: Icons.account_balance_wallet_outlined,
    title: 'Billetera',
    color: const Color(0xFFE91E63).withOpacity(0.2),
  ),
  Servicio(
    icon: Icons.computer_outlined,
    title: 'Oficina Virtual',
    color: const Color(0xFF4CAF50).withOpacity(0.2),
  ),
];