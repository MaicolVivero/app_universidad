import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../views/app_bar/app_bar_view.dart';
import '../views/home/home_view.dart';
import '../views/menu/menu_view.dart';
import '../views/noticias/noticias_view.dart';
import '../views/credito/credito_view.dart';
import '../views/pagos/pagos_view.dart';
import '../views/otros/otros_view.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return MainLayout(child: child);
        },
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const HomeView(),
          ),
          GoRoute(
            path: '/noticias',
            builder: (context, state) => const NoticiasView(),
          ),
          GoRoute(
            path: '/credito',
            builder: (context, state) => const CreditoView(),
          ),
          GoRoute(
            path: '/pagos',
            builder: (context, state) => const PagosView(),
          ),
          GoRoute(
            path: '/otros',
            builder: (context, state) => const OtrosView(),
          ),
        ],
      ),
    ],
  );
}

class MainLayout extends StatelessWidget {
  final Widget child;

  const MainLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBarView(),
      ),
      body: child,
      bottomNavigationBar: const MenuView(),
    );
  }
}
