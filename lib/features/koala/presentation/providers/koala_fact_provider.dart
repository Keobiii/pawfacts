import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pawfacts/features/koala/domain/entities/koala_fact.dart';
import 'package:pawfacts/features/koala/presentation/notifiers/koala_fact_notifier.dart';

final koalaFactNotifierProvider =
    AsyncNotifierProvider<KoalaFactNotifier, KoalaFact>(KoalaFactNotifier.new);
