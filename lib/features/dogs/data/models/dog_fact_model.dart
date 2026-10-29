import '../../domain/entities/dog_fact.dart';

class DogFactModel {
  final String id;
  final String fact;

  const DogFactModel({
    required this.id,
    required this.fact,
  });

  factory DogFactModel.fromJson(
    Map<String, dynamic> json,
  ) {
    final attributes =
        json['attributes'] as Map<String, dynamic>;

    return DogFactModel(
      id: json['id'] as String,
      fact: attributes['body'] as String,
    );
  }

  DogFact toEntity() {
    return DogFact(
      id: id,
      fact: fact,
    );
  }
}