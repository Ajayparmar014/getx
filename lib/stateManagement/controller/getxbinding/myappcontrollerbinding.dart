import 'package:get/instance_manager.dart';
import 'package:getx2/statemanagement/controller/getxbinding/binding_controller.dart';

class MyAppControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BindingController());
  }
}
