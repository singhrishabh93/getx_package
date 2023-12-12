
import 'package:get/get.dart';
import 'package:getx_package/controllers/list_controller.dart';
import 'package:getx_package/controllers/tap_controller.dart';

class InitDep implements Bindings{
  @override
  void dependencies(){
    Get.put(() => TapController());
    Get.put(() => ListController());
  }
}