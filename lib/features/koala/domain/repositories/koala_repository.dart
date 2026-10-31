import '../entities/koala_fact.dart';

abstract class KoalaRepository {
  Future<KoalaFact> getRandomFact();
}
