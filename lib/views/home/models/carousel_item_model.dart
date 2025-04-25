import 'package:flutter/material.dart';

class CarouselItem {
  final String title;
  final String subtitle;
  final String description;
  final Color color;
  final String? imageUrl;

  CarouselItem({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.color,
    this.imageUrl,
  });
}

// Lista de elementos para el carrusel con diferentes contenidos e imágenes
final List<CarouselItem> carouselItems = [
  CarouselItem(
    title: 'Tu mercado al instante con',
    subtitle: 'Mercaexpress',
    description: 'Adelanta tu cuota monetaria hasta por 3 meses y compra lo que necesites en nuestros establecimientos en convenio',
    color: const Color(0xFFFF5722),
   
  ),
  CarouselItem(
    title: 'Conoce nuestros',
    subtitle: 'Subsidios',
    description: 'Accede a los subsidios disponibles para ti y tu familia. Consulta requisitos y fechas de pago.',
    color: const Color(0xFF2196F3),
  
  ),
  CarouselItem(
    title: 'Descubre nuestros',
    subtitle: 'Créditos',
    description: 'Solicita créditos con las tasas más bajas del mercado y los mejores plazos de pago.',
    color: const Color(0xFF4CAF50),
  
  ),
];
