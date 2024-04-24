import 'package:fakes_store/exports/libraries.dart';
import 'package:fakes_store/models/product_models/product_model.dart';

class ProductService {
  ProductService(this._dio);
  final Dio _dio;

  List<ProductModel> productsList = [];

  List<ProductModel> searchProductList = [];

  Future<List<ProductModel>> getAllProductsData() async {
    try {
      final response = await _dio.get(EndPoints.products);

      if (response.statusCode == 200) {
        List<dynamic> data = response.data;

        List<ProductModel> list =
            data.map((e) => ProductModel.fromMap(e)).toList();

        productsList = List.from(list);

        return productsList;
      } else {
        throw Exception('Response Error on Products');
      }
    } catch (err) {
      throw Exception(err.toString());
    }
  }
}
