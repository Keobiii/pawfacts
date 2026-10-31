import 'package:go_router/go_router.dart';
import 'package:pawfacts/features/cats/presentation/pages/cat_facts_page.dart';
import 'package:pawfacts/features/dogs/presentation/pages/dog_facts_page.dart';
import 'package:pawfacts/features/elephant/presentation/pages/elephant_facts_page.dart';
import 'package:pawfacts/features/fox/presentation/pages/fox_facts_page.dart';
import 'package:pawfacts/features/giraffe/presentation/pages/giraffe_facts_page.dart';
import 'package:pawfacts/features/home/presentation/pages/home_page.dart';
import 'package:pawfacts/features/koala/presentation/pages/koala_facts_page.dart';
import 'package:pawfacts/features/raccoon/presentation/pages/raccoon_facts_page.dart';

import '../../features/panda/presentation/pages/panda_facts_page.dart';
import '../../features/whale/presentation/pages/whale_facts_page.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomePage()),
    GoRoute(path: '/dogs', builder: (context, state) => const DogFactsPage()),
    GoRoute(path: '/cats', builder: (context, state) => const CatFactsPage()),
    GoRoute(
      path: '/koalas',
      builder: (context, state) => const KoalaFactsPage(),
    ),
    GoRoute(
      path: '/elephants',
      builder: (context, state) => const ElephantFactsPage(),
    ),
    GoRoute(
      path: '/pandas',
      builder: (context, state) => const PandaFactsPage(),
    ),
    GoRoute(
      path: '/giraffes',
      builder: (context, state) => const GiraffeFactsPage(),
    ),
    GoRoute(
      path: '/whales',
      builder: (context, state) => const WhaleFactsPage(),
    ),
    GoRoute(path: '/foxes', builder: (context, state) => const FoxFactsPage()),
    GoRoute(
      path: '/raccoons',
      builder: (context, state) => const RaccoonFactsPage(),
    ),
  ],
);
