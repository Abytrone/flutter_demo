import 'package:get/get.dart';
import 'package:product/model/produc_model.dart';

import '../services/service.dart';

class ProductController extends GetxController {
  var productList = Rxn<List<Product>>();

  @override
  void onInit() {
    super.onInit();
    fetchProduct();
  }

  Future<void> fetchProduct() async {
    final products = await ApiService().fetchData();
    if (products != null) {
      productList(products.products);
    }
  }
}
