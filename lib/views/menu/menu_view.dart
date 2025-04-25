import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  int _currentIndex = 2; // Inicio seleccionado por defecto

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        
        switch (index) {
          case 0:
            context.go('/noticias');
            break;
          case 1:
            context.go('/credito');
            break;
          case 2:
            context.go('/');
            break;
          case 3:
            context.go('/pagos');
            break;
          case 4:
            context.go('/otros');
            break;
        }
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFF0D47A1),
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.article_outlined),
          label: 'Noticias',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.attach_money),
          label: 'Crédito',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.payment),
          label: 'Pagos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          label: 'Otros',
        ),
      ],
    );
  }
}
