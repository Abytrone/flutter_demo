import 'package:http/http.dart' as http;
import 'package:product/model/produc_model.dart';

class ApiService {
  Future<ProductModel?> fetchData() async {
    try {
      final response = await http.get(
        Uri.parse('https://dummyjson.com/products'),
      );
      if (response.statusCode == 200) {
        return productModelFromJson(response.body);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
