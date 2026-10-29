import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pawfacts/features/dogs/domain/entities/dog_fact.dart';
import 'package:pawfacts/features/dogs/presentation/notifiers/dog_fact_notifier.dart';

final dogFactNotifierProvider = AsyncNotifierProvider<DogFactNotifier, DogFact>(
  DogFactNotifier.new,
);
