import 'dart:ffi';

import 'package:get/get.dart';

class TapController extends GetxController {
  int _x = 0; // private Variable
  int get x => _x; // made the variable x public using Getx

  RxInt _y = 0
      .obs; // if value is of obs type we don't need update() function for updating the value.
  // if our value is of obs type we have to use .value property to increase or decrese the value.
  RxInt get y => _y;

  RxInt _z = 0.obs;
  int get z => _z.value.toInt();


  void totalXY() {
    _z.value = x + _y.value;
    print(_z);
  }
  
  void increaseX() {
    _x++;
    update(); // similar as setState() function
    // we used this to see the updated value on the screen, if we don't use this we'll not be able to see the change in the screen
    // print(_x);
  }

  void decreaseX() {
    _x--;
    print(_x);
    update(); //similar as setState() function
    // we used this to see the decresed value on the screen, if we don't use this we'll not be able to see the change in the screen
    // print(_x);
  }
  void increaseY() {
    _y.value++;
  }

  void decreaseY() {
    _y.value--;
  }
}
