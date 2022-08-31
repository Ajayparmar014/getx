import 'package:get/get.dart';

import '../../apimodule/api_service.dart';
import '../models/product_model.dart';

class ProductController extends GetxController {
  var isLoading = false.obs;
  // var productList = List<ProductModel>.of([]).obs;
  var productList = <ProductModel>[].obs;
  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await ApiService().fetchProducts();
      if (products != null) {
        productList.assignAll(products);
      }
    } finally {
      isLoading(false);
    }
  }
}
