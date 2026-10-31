import '../../domain/entities/koala_fact.dart';

class KoalaFactModel {
  final String fact;

  const KoalaFactModel({required this.fact});

  factory KoalaFactModel.fromJson(Map<String, dynamic> json) {
    return KoalaFactModel(fact: json['fact'] as String);
  }

  KoalaFact toEntity() {
    return KoalaFact(fact: fact);
  }
}
