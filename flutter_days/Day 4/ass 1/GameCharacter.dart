import 'AttackStrategy.dart';
class GameCharacter {
  String name;
  AttackStrategy strategy;

  GameCharacter({required this.name, required this.strategy});

  void performAttack() {
    print("$name is preparing to attack...");
    strategy.attack();
  }

  void changeStrategy(AttackStrategy newStrategy) {
    strategy = newStrategy;
    print("$name switched attack strategy.");
  }
}
