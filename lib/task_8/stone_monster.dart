import 'package:geniric/task_8/monster.dart';

class StoneMonster extends Monster {
  StoneMonster(super.name);

  @override
  String attack() {
    return '$name smashes with stone!';
  }
}