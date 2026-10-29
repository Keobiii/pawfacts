import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pawfacts/features/cats/domain/entities/cat_fact.dart';
import 'package:pawfacts/features/cats/presentation/notifiers/cat_fact_notifier.dart';

final catFactNotifierProvider = AsyncNotifierProvider<CatFactNotifier, CatFact>(
  CatFactNotifier.new,
);
