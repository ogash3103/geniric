import 'package:geniric/task_8/monster.dart';

class WaterMonster extends Monster {
  WaterMonster(super.name);
  @override
  String attack() {
   return '$name shoots water!';
  }
}