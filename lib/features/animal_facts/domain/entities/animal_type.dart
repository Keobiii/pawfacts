enum AnimalType {
  dog,
  cat,
  koala,
  fox,
  panda,
  bird,
  birb,
  kangaroo,
  raccoon,
  giraffe,
  whale,
  elephant,
  redPanda,
}

extension AnimalTypeExtension on AnimalType {
  String get endpoint {
    switch (this) {
      case AnimalType.dog:
        return 'dog';
      case AnimalType.cat:
        return 'cat';
      case AnimalType.koala:
        return 'koala';
      case AnimalType.fox:
        return 'fox';
      case AnimalType.panda:
        return 'panda';
      case AnimalType.bird:
        return 'bird';
      case AnimalType.birb:
        return 'birb';
      case AnimalType.kangaroo:
        return 'kangaroo';
      case AnimalType.raccoon:
        return 'racoon';
      case AnimalType.giraffe:
        return 'giraffe';
      case AnimalType.whale:
        return 'whale';
      case AnimalType.elephant:
        return 'elephant';
      case AnimalType.redPanda:
        return 'red_panda';
    }
  }
}
