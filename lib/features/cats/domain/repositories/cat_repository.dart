import 'package:pawfacts/features/cats/domain/entities/cat_fact.dart';

abstract class CatRepository {
  Future<CatFact> getRandomFact();
}
