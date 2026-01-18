import 'package:geniric/task_8/monster.dart';

class FireMonster extends Monster {
  FireMonster(super.name);
  @override
  String attack() {
   return '$name throws fire!';
  }
}