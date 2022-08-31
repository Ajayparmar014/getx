import 'package:http/http.dart' as http;
import 'package:getx2/statemanagement/controller/api/productmodule/models/product_model.dart';

class ApiService {
  var client = http.Client();
  Future<List<ProductModel>?> fetchProducts() async {
    var url = Uri.parse(
        "https://makeup-api.herokuapp.com/api/v1/products.json?brand=colourpop");
    var response = await client.get(url);

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productModelFromJson(jsonString);
    } else {
      throw Exception('Failed to load album');
    }
  }
}
