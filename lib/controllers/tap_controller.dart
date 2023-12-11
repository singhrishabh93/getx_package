import 'package:get/get.dart';

class TapController extends GetxController {
  int _x = 0; // private Variable
  int get x => _x; // made the variable x public using Getx
  void increaseX() {
    _x++;
    print(_x);
  }
}
