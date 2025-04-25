import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'models/servicio_model.dart';
import 'models/carousel_item_model.dart';
import 'widgets/service_card.dart';
import 'widgets/chat_button.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentCarouselIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
                child: Text(
                  'NOVEDADES',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0D47A1),
                  ),
                ),
              ),
              // Carousel de novedades
              CarouselSlider(
                options: CarouselOptions(
                  height: 160, // Aumentado para dar más espacio
                  viewportFraction: 0.92,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  enlargeCenterPage: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentCarouselIndex = index;
                    });
                  },
                ),
                items: carouselItems.map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: item.color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        clipBehavior: Clip.hardEdge, // Añadido para recortar la imagen si se desborda
                        child: Stack(
                          children: [
                            // Contenido de texto (limitado al 60% del ancho)
                            Positioned(
                              left: 16,
                              top: 16,
                              bottom: 16,
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    item.title,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    item.subtitle,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Flexible(
                                    child: Text(
                                      item.description,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 4,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                            // Imagen (posicionada a la derecha)
                            if (item.imageUrl != null)
                              Positioned(
                                right: 0,
                                top: 0,
                                bottom: 0,
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: FractionallySizedBox(
                                  widthFactor: 1.0,
                                  heightFactor: 1.0,
                                  child: Image.network(
                                    item.imageUrl!,
                                    fit: BoxFit.contain,
                                    alignment: Alignment.centerRight,
                                    errorBuilder: (context, error, stackTrace) {
                                      print("Error cargando imagen: $error");
                                      return const Icon(Icons.error, color: Colors.white);
                                    },
                                    loadingBuilder: (context, child, loadingProgress) {
                                      if (loadingProgress == null) return child;
                                      return Center(
                                        child: CircularProgressIndicator(
                                          value: loadingProgress.expectedTotalBytes != null
                                              ? loadingProgress.cumulativeBytesLoaded / 
                                                  loadingProgress.expectedTotalBytes!
                                              : null,
                                          color: Colors.white,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              ),

              const Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
                child: Text(
                  'SERVICIOS',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0D47A1),
                  ),
                ),
              ),
              // Grid de servicios
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: servicios.length,
                  itemBuilder: (context, index) {
                    return ServiceCard(
                      icon: servicios[index].icon,
                      title: servicios[index].title,
                      color: servicios[index].color,
                    );
                  },
                ),
              ),
                const SizedBox(height: 100),  // Espacio para el bottom navigation bar
            ],
          ),
        ),

        Positioned(
          right: 16, 
          bottom: 20, // Ajustado para estar por encima del bottom navigation bar
          child: const ChatButton()
        ),
      ],
    );
  }
}
