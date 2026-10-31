import '../../domain/entities/dog_fact.dart';

class DogFactModel {
  final String fact;

  const DogFactModel({required this.fact});

  factory DogFactModel.fromJson(Map<String, dynamic> json) {
    return DogFactModel(fact: json['fact'] as String);
  }

  DogFact toEntity() {
    return DogFact(fact: fact);
  }
}
