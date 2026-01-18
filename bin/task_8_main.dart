import 'package:geniric/task_8/fire_monster.dart';
import 'package:geniric/task_8/monster.dart';
import 'package:geniric/task_8/stone_monster.dart';
import 'package:geniric/task_8/water_monster.dart';

void main() {
  List<Monster> monsters = [
    FireMonster('Inferno'),
    WaterMonster('Aqua'),
    StoneMonster('Rocky'),
  ];

  for(final monster in monsters){
    print(monster.attack());
  }
}