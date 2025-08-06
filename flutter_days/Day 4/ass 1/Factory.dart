import 'GameCharacter.dart';
import 'MagicAttack.dart';
import 'SwordAttack.dart';
import 'StealthAttack.dart';

GameCharacter createCharacter(String classType, String name) {
  if (classType.toLowerCase() == "warrior") {
    return GameCharacter(name: name, strategy: SwordAttack());
  } else if (classType.toLowerCase() == "mage") {
    return GameCharacter(name: name, strategy: MagicAttack());
  } else if (classType.toLowerCase() == "assassin") {
    return GameCharacter(name: name, strategy: StealthAttack());
  } else {
    throw Exception("Unknown character class: $classType");
  }
}
