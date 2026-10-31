import 'package:pawfacts/features/animal_facts/domain/entities/animal_fact.dart';

class AnimalFactModel {
  final String fact;

  const AnimalFactModel({required this.fact});

  factory AnimalFactModel.fromJson(Map<String, dynamic> json) {
    return AnimalFactModel(fact: json['fact'] as String);
  }

  AnimalFact toEntity() {
    return AnimalFact(fact: fact);
  }
}
