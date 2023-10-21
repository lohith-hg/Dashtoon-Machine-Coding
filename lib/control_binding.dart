import 'package:dashtoon_machine_coding/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class ControlBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}