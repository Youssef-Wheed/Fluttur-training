import 'Factory.dart';
import 'MagicAttack.dart';
import 'StealthAttack.dart';
import 'SwordAttack.dart';

void main() {
  // Example usage of the factory to create different game characters
  var warrior = createCharacter("warrior", "Conan");
  var mage = createCharacter("mage", "Gandalf");
  var assassin = createCharacter("assassin", "Ezio");

  // Perform attacks
  warrior.performAttack();
  print("--------------------------");
  mage.performAttack();
  print("--------------------------");
  assassin.performAttack();
  print("--------------------------");
  // Change strategies
  warrior.changeStrategy(StealthAttack());
  warrior.performAttack();
  print("--------------------------");
  mage.changeStrategy(SwordAttack());
  mage.performAttack();
  print("--------------------------");
  assassin.changeStrategy(MagicAttack());
  assassin.performAttack();
}
