import 'package:pawfacts/features/cats/domain/entities/cat_fact.dart';

class CatFactModel {
  final int length;
  final String fact;

  const CatFactModel({required this.length, required this.fact});

  factory CatFactModel.fromJson(Map<String, dynamic> json) {
    return CatFactModel(
      length: json['length'] as int,
      fact: json['fact'] as String,
    );
  }

  CatFact toEntity() {
    return CatFact(length: length, fact: fact);
  }
}
