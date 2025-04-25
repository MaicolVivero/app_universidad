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
    color: Colors.purple,
  ),
  Servicio(
    icon: Icons.people_outline,
    title: 'Subsidios',
    color: Colors.blue,
  ),
  Servicio(
    icon: Icons.attach_money,
    title: 'Créditos',
    color: Colors.blue,
  ),
  Servicio(
    icon: Icons.description_outlined,
    title: 'Certificados',
    color: Colors.orange,
  ),
  Servicio(
    icon: Icons.flight_outlined,
    title: 'Recreación',
    color: Colors.green,
  ),
  Servicio(
    icon: Icons.shopping_cart_outlined,
    title: 'Ventas',
    color: Colors.blue,
  ),
  Servicio(
    icon: Icons.account_balance_wallet_outlined,
    title: 'Billetera',
    color: Colors.purple,
  ),
  Servicio(
    icon: Icons.computer_outlined,
    title: 'Oficina Virtual',
    color: Colors.indigo,
  ),
];
