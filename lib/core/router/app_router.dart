import 'package:go_router/go_router.dart';
import 'package:pawfacts/features/cats/presentation/pages/cat_facts_page.dart';
import 'package:pawfacts/features/dogs/presentation/pages/dog_facts_page.dart';
import 'package:pawfacts/features/home/presentation/home_page.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomePage()),
    GoRoute(path: '/dogs', builder: (context, state) => const DogFactsPage()),
    GoRoute(path: '/cats', builder: (context, state) => const CatFactsPage()),
  ],
);
