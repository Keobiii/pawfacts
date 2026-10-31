import 'package:pawfacts/features/cats/domain/entities/cat_fact.dart';

class CatFactModel {
  final String fact;

  const CatFactModel({required this.fact});

  factory CatFactModel.fromJson(Map<String, dynamic> json) {
    return CatFactModel(fact: json['fact'] as String);
  }

  CatFact toEntity() {
    return CatFact(fact: fact);
  }
}
