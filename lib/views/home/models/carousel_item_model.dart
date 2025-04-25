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
    title: 'Descubre nuestros',
    subtitle: 'Créditos',
    description: 'Solicita créditos con las tasas más bajas del mercado y los mejores plazos de pago.',
    color: const Color(0xFF4CAF50),
    imageUrl: 'https://static.vecteezy.com/system/resources/previews/008/480/484/non_2x/credit-card-cashless-society-concept-illustration-landing-page-template-for-background-png.png'
    //imageUrl: 'https://png.pngtree.com/png-clipart/20240329/original/pngtree-animated-mini-market-icon-with-transparent-background-vector-png-image_14711218.png',
  ),
  CarouselItem(
    title: 'Tu mercado al instante con',
    subtitle: 'Mercaexpress',
    description: 'Adelanta tu cuota monetaria hasta por 3 meses y compra lo que necesites en nuestros establecimientos en convenio',
    color: const Color(0xFFFF5722),
    imageUrl: 'https://static.vecteezy.com/system/resources/previews/015/131/804/non_2x/flat-cartoon-style-shop-facade-front-view-modern-flat-storefront-or-supermarket-design-png.png',
  ),
  CarouselItem(
    title: 'Conoce nuestros',
    subtitle: 'Subsidios',
    description: 'Accede a los subsidios disponibles para ti y tu familia. Consulta requisitos y fechas de pago.',
    color: const Color(0xFF2196F3),
    imageUrl: 'https://cdni.iconscout.com/illustration/premium/thumb/subsidio-paternal-7486480-6139003.png?f=webp',
  ),
];
//