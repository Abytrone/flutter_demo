import 'package:get/get.dart';

import 'conroller/product_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<ProductController>(ProductController());
  }
}
