import 'package:get/instance_manager.dart';

import 'binding_controller.dart';
import 'home_controller.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BindingController>(() => BindingController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
